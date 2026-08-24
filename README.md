# AutomationResearch

Kumpulan automation test berbasis [Robot Framework](https://robotframework.org/) untuk kebutuhan regression testing QA. Repository ini berisi tiga area project dengan cakupan website, mobile Android/iOS, API, dan contoh integrasi database.

## Daftar Isi

- [Ringkasan Project](#ringkasan-project)
- [Prasyarat](#prasyarat)
- [Setup Instalasi Awal](#setup-instalasi-awal)
- [Konfigurasi Sebelum Menjalankan Test](#konfigurasi-sebelum-menjalankan-test)
- [Menjalankan Test](#menjalankan-test)
- [Output dan Report](#output-dan-report)
- [Struktur Worktree](#struktur-worktree)
- [Alur Kerja Singkat](#alur-kerja-singkat)
- [Troubleshooting](#troubleshooting)

## Ringkasan Project

| Folder | Fokus | Platform/jenis test |
| --- | --- | --- |
| `chatshopProject` | Dashboard affiliate dan fitur multiproduk | Website desktop, website melalui Chrome Android, dan beberapa alur WhatsApp |
| `pilotProject` | Contoh automation dan pilot test | Website, Android native/Flutter, API, dan contoh database |
| `websiteProject` | Automation HR/Pagii CMS serta workflow Gherkin | Website dengan Selenium dan extension CAPTCHA |

File `.feature` berisi skenario Gherkin, file `.robot` adalah test suite yang dijalankan Robot Framework, dan file `.resource` berisi keyword, locator, serta konfigurasi yang dipakai ulang.

## Prasyarat

### Semua platform

- Windows 10/11
- Python 3.10 atau lebih baru
- Visual Studio Code
- Git
- Node.js dan npm, jika menjalankan Appium mobile

### Website

- Google Chrome
- ChromeDriver yang kompatibel dengan Chrome. Selenium versi modern biasanya dapat mengelolanya otomatis, tetapi ChromeDriver tetap dapat dipasang dan dimasukkan ke `PATH` bila environment memakai konfigurasi lama.
- Extension CAPTCHA yang diperlukan oleh project website. Extension yang tersedia ada di `websiteProject/extensions` dan `pilotProject/pilotprojectWebsite/utility/extensions`.

### Android

- Android Studio atau Android SDK Platform Tools
- Android Emulator atau perangkat Android fisik
- USB debugging aktif untuk perangkat fisik
- `adb` tersedia di `PATH`
- Appium Server 2 dan driver `uiautomator2`
- APK yang akan dites

Periksa instalasi dasar:

```powershell
python --version
pip --version
adb version
node --version
appium --version
```

Untuk iOS, test membutuhkan macOS, Xcode, WebDriverAgent, dan driver `xcuitest`. Konfigurasi iOS yang ada di repository merupakan referensi dan tidak dapat dijalankan dari Windows.

## Setup Instalasi Awal

Buka PowerShell dari root repository, yaitu folder yang berisi `chatshopProject`, `pilotProject`, dan `websiteProject`.

### 1. Install library Robot Framework

```powershell
pip install robotframework robotframework-seleniumlibrary robotframework-appiumlibrary robotframework-requests robotframework-databaselibrary
```

Library yang terlihat digunakan oleh project meliputi `SeleniumLibrary`, `AppiumLibrary`, `RequestsLibrary`, `OperatingSystem`, `Collections`, `String`, dan `Dialogs`. `robotframework-databaselibrary` disertakan untuk contoh database; pasang driver database tambahan sesuai database yang digunakan.

Validasi instalasi:

```powershell
robot --version
python -c "from SeleniumLibrary import SeleniumLibrary; from AppiumLibrary import AppiumLibrary; from RequestsLibrary import RequestsLibrary; print('Robot libraries OK')"
```

### 2. Install dan siapkan Appium untuk Android

```powershell
npm install --global appium
appium driver install uiautomator2
appium driver list --installed
```

Hubungkan device atau jalankan emulator, kemudian pastikan device terdeteksi:

```powershell
adb devices
```

Jalankan Appium pada terminal terpisah sebelum test mobile:

```powershell
appium --address 127.0.0.1 --port 4723
```

### 3. Install extension VS Code

Extension yang membantu pengembangan dan debugging:

- Python
- Pylance
- Robot Framework Language Server
- Robocorp Code
- Cucumber/Gherkin
- Prettier - Code formatter

Pilih interpreter `.venv` melalui `Python: Select Interpreter` di VS Code.

## Konfigurasi Sebelum Menjalankan Test

Sebagian konfigurasi saat ini masih berisi path dan credential lokal. Sebelum eksekusi, periksa dan sesuaikan file berikut:

- `chatshopProject/utility/dashboard-affiliate/variable.resource`: URL staging, browser, Appium URL, versi platform, nama device, dan data login.
- `pilotProject/exampleMobile/config/capabilities.json`: path APK, device Android, automation engine, dan package/activity.
- `pilotProject/exampleMobile/config/capabilities-iOS.json`: hanya untuk macOS/Xcode; isi `xcodeOrgId`, UDID, dan path IPA.
- `pilotProject/pilotprojectMobile/platformAndroid/utility/globalKeyword.resource`: endpoint Appium, path APK, versi Android, device, package, dan activity.
- `websiteProject/pagiiCMS/utility/globalVariable.resource`: path extension CAPTCHA, path file gambar, locator, dan data environment.
- `websiteProject/pagiiCMS/utility/globalKeyword.resource`: URL staging serta alur login website.

Gunakan data test khusus environment staging. Jangan commit password, token, path pribadi, atau credential production. Untuk konfigurasi baru, lebih baik pindahkan nilai tersebut ke resource lokal yang di-ignore Git atau ke variable yang diberikan saat runtime dengan `-v`.

Contoh override variable saat runtime:

```powershell
robot -d results -v BASE_URL:https://example.test -v BROWSER:chrome path\ke\suite.robot
```

Catatan: nama variable harus sama persis dengan variable yang dipakai suite; tidak semua suite saat ini sudah menerima semua override tersebut.

## Menjalankan Test

Jalankan command dari root repository. Folder output sebaiknya berbeda untuk setiap eksekusi agar report tidak tertimpa.

### Website: `chatshopProject`

```powershell
robot -d results\chatshop-login chatshopProject\testCase\dashboard-affiliate\loginAffiliator.robot
robot -d results\chatshop-multiproduk chatshopProject\testCase\dashboard-affiliate\multiproduk
```

### Website: `pilotProject`

```powershell
robot -d results\pilot-website pilotProject\exampleWebsite\testCase\tmLoginValid.robot
robot -d results\pilot-registration pilotProject\pilotprojectWebsite\testCase\registration
```

Untuk menjalankan suite yang dipilih oleh script Python, masuk ke folder utility agar path relatif pada `main.py` tetap valid:

```powershell
Set-Location pilotProject\pilotprojectWebsite\utility
python main.py
Set-Location ..\..\..
```

Script tersebut menjalankan suite registration yang terdaftar di `main.py` dan mencoba membuat metrics report dengan `robotmetrics`. Install tool tambahan bila memang diperlukan:

```powershell
pip install robotframework-metrics
```

### Website: `websiteProject/pagiiCMS`

```powershell
robot -d results\pagii-register websiteProject\pagiiCMS\feature\register_user.robot
robot -d results\pagii-register-login websiteProject\pagiiCMS\testCase\F001-Register_Login
```

Pastikan Chrome dapat memuat extension CAPTCHA dan path extension di `globalVariable.resource` menunjuk ke folder extension yang benar. Beberapa skenario memanggil `Pause Execution`, sehingga test dapat menunggu tindakan manual.

### Mobile Android: `chatshopProject`

Nyalakan Appium dan Android device terlebih dahulu, lalu jalankan suite mobile yang sesuai. Contoh suite login mobile:

```powershell
robot -d results\chatshop-mobile-login chatshopProject\testCase\dashboard-affiliate\loginAffiliator.robot
```

Suite chatshop menggunakan `AppiumLibrary` dan capability Chrome Android seperti `REMOTE_URL`, `PLATFORM_VERSION`, dan `DEVICE_NAME` dari `variable.resource`. Pastikan URL, device, dan browser capability sesuai perangkat yang terhubung.

### Mobile Android: `pilotProject`

```powershell
robot -d results\pilot-mobile-login pilotProject\exampleMobile\platformAndroid\testCase\loginUser.robot
robot -d results\pilot-mobile-open-app pilotProject\exampleMobile\platformAndroid\testCase\openApps.robot
robot -d results\pilot-mobile-register pilotProject\exampleMobile\platformAndroid\testCase\registerUser.robot
```

Contoh test native/Flutter pilot yang lebih baru berada di:

```powershell
robot -d results\pilot-mobile-native pilotProject\pilotprojectMobile\platformAndroid\testCase\nativeDev
robot -d results\pilot-mobile-flutter pilotProject\pilotprojectMobile\platformAndroid\testCase\flutterDev
```

Jika suite merujuk APK hardcoded, ubah path APK di resource atau capability terlebih dahulu. Beberapa contoh memakai key capability lama `platfromVersion`; bila Appium menolak capability tersebut, koreksi menjadi `platformVersion` pada konfigurasi suite terkait.

### API dan database

```powershell
robot -d results\pilot-api pilotProject\exampleAPI
robot -d results\pilot-db pilotProject\exampleDB
```

Pastikan endpoint, credential, driver database, dan service yang dibutuhkan tersedia. `getOTP_reference.robot` adalah contoh/reference, bukan jaminan test end-to-end siap dijalankan tanpa data staging.

### Menjalankan berdasarkan tag

```powershell
robot -d results --include valid chatshopProject\testCase
robot -d results --include LoginTMDigital pilotProject\exampleWebsite\testCase
```

Gunakan `robot --help` untuk opsi lengkap. Nama tag ditentukan di masing-masing suite.

## Output dan Report

Setiap eksekusi Robot Framework menghasilkan `output.xml`, `log.html`, dan `report.html` di folder yang diberikan oleh `-d`.

```powershell
robot -d results\smoke chatshopProject\testCase\dashboard-affiliate\loginAffiliator.robot
```

Buka `results\smoke\report.html` untuk ringkasan atau `results\smoke\log.html` untuk detail keyword, screenshot, dan error. Jangan commit folder hasil test kecuali memang diperlukan sebagai evidence; tambahkan folder output ke `.gitignore` bila belum ada.

## Struktur Worktree

```text
AutomationResearch/
├── README.md
├── chatshopProject/
│   ├── feature/                 # Skenario Gherkin dashboard affiliate
│   ├── stepDefinition/          # Keyword/step definition multiproduk
│   ├── testCase/                # Suite Robot Framework yang dijalankan
│   └── utility/                 # Keyword global, mobile, variable, helper Python
├── pilotProject/
│   ├── exampleAPI/              # Contoh test API dan pengambilan OTP/reference
│   ├── exampleDB/               # Contoh koneksi/test database
│   ├── exampleMobile/           # Android/iOS capability dan sample suite
│   ├── exampleWebsite/          # Sample Gherkin dan suite website
│   ├── pilotprojectMobile/      # Pilot mobile Android native/Flutter
│   └── pilotprojectWebsite/     # Skenario website, utility, dan runner Python
└── websiteProject/
	├── extensions/              # Browser extension yang disimpan bersama project
	├── gherkin-copilot-ai/      # PRD, requirement, guideline, dan feature Gherkin
	└── pagiiCMS/                # Feature, step definition, test case, dan utility CMS
```

Pola umum tiap project adalah `feature/gherkin -> stepDefinition/resource -> testCase`. Saat menambah skenario, buat atau sesuaikan ketiga bagian tersebut dan gunakan keyword reusable di `utility` bila perilakunya lintas suite.

## Alur Kerja Singkat

1. Terima atau tulis skenario Gherkin dari requirement.
2. Tambahkan negative case yang relevan, misalnya field kosong, format salah, atau tipe data tidak valid.
3. Pastikan elemen penting memiliki ID/locator stabil.
4. Konversi Gherkin ke `.resource` dan `.robot` bila memakai `gherkin2robotframework`.
5. Sesuaikan hasil konversi dengan kondisi aplikasi sebenarnya, capability, data staging, dan locator.
6. Jalankan suite setelah environment siap dan simpan report sebagai evidence.
7. Kirim hasil test serta skenario negative case kepada coordinator untuk menentukan tindak lanjut.

## Troubleshooting

| Gejala | Pemeriksaan |
| --- | --- |
| `robot` tidak dikenali | Aktifkan `.venv` atau gunakan `\.venv\Scripts\python.exe -m robot`. |
| `No keyword with name ... found` | Pastikan package/library terpasang dan path `Resource` dijalankan dari lokasi yang benar. |
| Appium tidak dapat connect | Pastikan `appium` aktif di port `4723`, `adb devices` menampilkan device, dan driver `uiautomator2` terpasang. |
| APK tidak ditemukan | Ganti path `app` pada capability/resource dengan absolute path APK lokal. |
| Chrome/driver gagal start | Periksa versi Chrome, ChromeDriver, dan extension CAPTCHA. |
| Test berhenti di CAPTCHA atau OTP | Sediakan data staging yang valid; beberapa flow memang memerlukan penyelesaian manual atau service email/API staging. |
| Suite gagal karena file tidak ditemukan | Jalankan dari root dengan path lengkap atau dari folder suite yang sesuai dengan `Resource` relatifnya. |

## Status

Repository ini merupakan kumpulan research, sample, dan regression suite yang berkembang. Tidak semua contoh dapat dijalankan tanpa akses ke environment staging, device, APK, service API, credential, dan extension terkait.

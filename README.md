# AutomationResearch

Berikut ini adalah kumpulan automation test berbasis Robot Framework. Repository ini menggabungkan kebutuhan pengujian website, mobile, API, dan database dari `pilotProject`, `chatshopProject`, serta `websiteProject`.

## Setup Awal dan Dependencies

Sebelum mulai, siapkan beberapa kebutuhan berikut:

- Windows 10/11, Python 3.10 atau versi yang lebih baru, Visual Studio Code, dan Git.
- Google Chrome serta ChromeDriver yang sesuai untuk test website.
- Node.js/npm, Android SDK Platform Tools, device atau emulator Android, dan Appium Server 2 untuk test mobile.
- macOS, Xcode, WebDriverAgent, dan driver `xcuitest` hanya jika ingin menjalankan referensi iOS.

Buka terminal di root repository, yaitu folder yang berisi tiga folder project tersebut. Buat virtual environment agar dependency repository tidak bercampur dengan Python project lain:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install robotframework robotframework-seleniumlibrary robotframework-appiumlibrary robotframework-requests robotframework-databaselibrary
```

Library yang digunakan di dalam project antara lain:

- `SeleniumLibrary` untuk menjalankan test website.
- `AppiumLibrary` untuk menjalankan test Android dan referensi iOS.
- `RequestsLibrary` untuk mengirim request dan memeriksa response API.
- `DatabaseLibrary` untuk terhubung ke database dan memeriksa hasil query. Driver database seperti `psycopg2` perlu ditambahkan sesuai database yang digunakan.
- `Collections`, `String`, dan `OperatingSystem` sebagai library pendukung di beberapa suite.
- `robotmetrics` sebagai pilihan tambahan untuk membuat metrics report dari `pilotProject/pilotprojectWebsite/utility/main.py`.

Jika ingin menjalankan test Android, lanjutkan dengan setup Appium berikut:

```powershell
npm install --global appium
appium driver install uiautomator2
adb devices
```

Extension VS Code yang membantu pekerjaan di repository ini adalah `Python`, `Pylance`, `Robot Framework Language Server`, `Robocorp Code`, `Cucumber/Gherkin`, dan `Prettier`.

Pengaturan seperti URL, credential, device, APK, capability, dan path extension dapat ditemukan di `variable.resource`, `globalVariable.resource`, `globalKeyword.resource`, atau file capability masing-masing project. Sesuaikan nilainya dengan environment yang digunakan, pilih `.venv` sebagai interpreter VS Code, dan gunakan data staging. Password atau token tidak boleh disimpan di file yang di-commit.

## Struktur Folder

```text
AutomationResearch/
├── README.md
├── chatshopProject/
│   ├── feature/                 # Skenario Gherkin dashboard affiliate
│   ├── stepDefinition/          # Step definition dan keyword fitur
│   ├── testCase/                # Suite Robot Framework
│   └── utility/                 # Keyword reusable, variable, dan helper Python
├── pilotProject/
│   ├── exampleAPI/              # Contoh test API
│   ├── exampleDB/               # Contoh koneksi dan assertion database
│   ├── exampleMobile/           # Sample Android/iOS dan capability
│   ├── exampleWebsite/          # Sample Gherkin dan suite website
│   ├── pilotprojectMobile/      # Suite Android native/Flutter
│   └── pilotprojectWebsite/     # Suite website, resource, dan runner Python
└── websiteProject/
    ├── extensions/              # Browser extension pendukung
    ├── gherkin-copilot-ai/      # Requirement, guideline, dan feature Gherkin
    └── pagiiCMS/                # Feature, step definition, test case, dan utility CMS
```

Alur file yang digunakan: `feature/gherkin -> stepDefinition/resource -> testCase`. File feature berisi skenario dengan konsep BDD/Gherkin, step definition/resource berisi keyword serta locator, dan test case menjadi file yang dijalankan oleh Robot Framework.

## Best Practice yang Sudah Diterapkan

- Terdapat penerapan **waiting berbasis kondisi**, misalnya `Wait Until Element Is Visible`, `Wait Until Page Contains`, dan `Wait Until Keyword Succeeds`.
- Terdapat penerapan **assertion yang jelas**, misalnya `Element Should Be Visible`, `Element Should Contain`, assertion status dan isi response API, serta validasi jumlah row pada database.
- Struktur file dan keyword dibuat **maintainable** dan mudah dikembangkan dengan menerapkan struktur modular serta pendekatan **Page Object Model (POM)** melalui pemisahan `feature`, `stepDefinition`, `testCase`, dan `utility`.

## Assertion API dan Database

### API

Di `pilotProject/exampleAPI`, merupakan contoh penggunaan `RequestsLibrary`. Test membuat session, mengirim request, lalu memeriksa status dan isi response. Contoh sederhananya:

```robot
Create Session    mysession    ${BASE_URL}
${response}=    Get On Session    mysession    /books    params=type=fiction
Should Be Equal As Integers    ${response.status_code}    200
${body}=    Convert To String    ${response.json()}
Should Contain    ${body}    fiction
```

Dengan pola ini, hasil API tidak hanya dianggap berhasil karena request dapat dikirim. Test juga memastikan status code dan data yang dikembalikan sesuai kebutuhan skenario.

### Database

Di `pilotProject/exampleDB`, merupakan contoh penggunaan `DatabaseLibrary` untuk terhubung ke PostgreSQL dan memeriksa hasil query. Contoh yang tersedia memvalidasi bahwa email tertentu tercatat tepat satu kali:

```robot
Connect To Database    psycopg2    db_name=${DB_NAME}    db_user=${DB_USER}    db_password=${DB_PASSWORD}    db_host=${DB_HOST}    db_port=${DB_PORT}
${sql}=    Catenate    SELECT email FROM users WHERE email = '${TEST_EMAIL}'
Check Row Count    ${sql}    ==    1
Disconnect From Database
```

Database assertion membantu memeriksa data yang tidak selalu terlihat dari UI, misalnya data berhasil tersimpan atau status transaksi sudah berubah. Saat menambah test baru, gunakan data test yang terkontrol, simpan credential di luar source code, dan selalu tutup koneksi setelah query selesai.
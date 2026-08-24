# Playwright

Repository ini berisi research dan contoh automation test dengan Playwright untuk membantu kebutuhan pengujian Quality Assurance. Di branch `playwright` terdapat contoh pengujian website menggunakan dua pendekatan: Page Object Model dan BDD dengan Gherkin.

## 1. Setup Awal & Dependencies

Sebelum menjalankan test, pastikan sudah tersedia:

- Node.js dan npm.
- Visual Studio Code.
- Browser yang akan digunakan oleh Playwright.
- Akses ke environment aplikasi yang akan dites, termasuk credential dan penyelesaian CAPTCHA jika diperlukan.

Masing-masing pendekatan memiliki folder project dan `package.json` sendiri. Jalankan setup dari folder yang ingin digunakan.

### Project dengan Page Object Model

```powershell
cd playwright-pom
npm install
npx playwright install
```

### Project dengan BDD Gherkin

```powershell
cd playwright-bddGherkin
npm install
npx playwright install
```

Dependency utama yang digunakan:

- `@playwright/test` untuk menjalankan browser automation, assertion, dan test runner Playwright.
- `playwright-bdd` untuk menghubungkan feature Gherkin dengan step definition TypeScript.
- `typescript` untuk menulis test dan Page Object dengan type checking.
- `@types/node` untuk dukungan type definition Node.js.

Perintah dasar untuk menjalankan test:

```powershell
npm test
```

Konfigurasi utama berada di `playwright.config.ts`. Di sana sudah diatur base URL, timeout, mode browser, screenshot, video, dan HTML report. Beberapa test menggunakan URL staging serta data login yang ditulis di source code, sehingga nilainya perlu disesuaikan dengan environment lokal sebelum digunakan.

## 2. Struktur Folder (Modularity & POM Model)

Struktur branch ini dibuat agar setiap bagian test memiliki tanggung jawab yang jelas:

```text
AutomationResearch/
├── README.md
├── playwright-pom/
│   ├── a_pages/                 # Page Object dan locator halaman
│   │   └── pilotProject/
│   ├── b_tests/                 # Test spec Playwright
│   │   └── pilotProject/
│   ├── reporter/                # Custom reporter untuk menyimpan evidence
│   ├── playwright.config.ts     # Konfigurasi test dan report
│   ├── tsconfig.json            # Konfigurasi TypeScript
│   └── package.json              # Script dan dependency project
└── playwright-bddGherkin/
	├── a_pages/                 # Page Object dan locator halaman
	│   └── pilotProject/
	├── b_features/              # Skenario dalam format Gherkin
	│   └── pilotProject/
	├── c_steps/                 # Implementasi Given, When, dan Then
	│   └── pilotProject/
	├── playwright.config.ts     # Konfigurasi Playwright dan BDD
	├── tsconfig.json            # Konfigurasi TypeScript
	└── package.json              # Script dan dependency project
```

Pada pendekatan POM, test memanggil method dari class seperti `LoginPage`, sedangkan locator dan detail interaksi disimpan di `a_pages`. Dengan cara ini, perubahan locator dapat dilakukan di satu tempat.

Pada pendekatan BDD, alurnya adalah `b_features -> c_steps -> a_pages`. Feature menjelaskan skenario dengan gherkin lenguage, step definition menghubungkan kalimat Gherkin ke kode, dan Page Object menangani interaksi dengan halaman.

## 3. Best Practice yang Sudah Diterapkan

- Terdapat penerapan **Modularity**, yaitu pemisahan test, Page Object, feature, step definition, konfigurasi, dan custom reporter ke folder yang memiliki tanggung jawab masing-masing.
- Terdapat penerapan **Page Object Model (POM)** melalui class seperti `LoginPage`. Locator dan aksi halaman dikelola di Page Object sehingga test tetap lebih ringkas dan mudah dikembangkan.
- Terdapat penerapan **BDD dengan Gherkin** pada `playwright-bddGherkin`. Skenario pada file `.feature` dipisahkan dari implementasi step TypeScript sehingga alur test lebih mudah dipahami oleh tim teknis maupun non-teknis.
- Terdapat penerapan **waiting berbasis kondisi**, terutama saat menunggu CAPTCHA melalui `waitForFunction` sampai token tersedia. Playwright juga membantu melakukan auto-wait pada interaksi dengan element.
- Terdapat penerapan **validasi hasil test**, seperti pemeriksaan halaman login, keberadaan dashboard, dan validasi token CAPTCHA sebelum proses login dilanjutkan.
- Terdapat pengaturan **evidence test** berupa screenshot, video, HTML report, serta custom evidence reporter pada project POM. Evidence ini membantu proses analisis ketika test gagal.
- TypeScript digunakan dengan mode `strict` dan `forceConsistentCasingInFileNames`, sehingga kesalahan tipe dan perbedaan penamaan file dapat lebih cepat ditemukan.

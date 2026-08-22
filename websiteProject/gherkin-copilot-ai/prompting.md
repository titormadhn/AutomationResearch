# Robot Framework Test Automation Flow (with Copilot + Gherkin)

## Alur Otomatisasi

### 1. Generate Negative Case dari `Gherkin.feature`

- **Tujuan**: Membuat variasi (*negative case*) dari skenario positif.

- **Prompt Copilot**:
    buatkan skenario negatif berdasarkan file "login.feature"
    Gunakan format Gherkin dalam file .feature, tambahkan kata "negative" di nama file hasil generate.
    Simpan dalam folder features

- **Prompt Copilot II**:
  Format untuk setiap skenario negatif:
  - Gunakan format Gherkin yang sama dengan file aslinya (Given-When-Then)
  - Pastikan setiap langkah jelas dan dapat diimplementasikan dalam automation
  - Akhiri dengan ekspektasi yang jelas (error message, remain on same page, notification)
  - Berikan id pada setiap elemen yang relevan (field, button, notification) untuk referensi automation
  - Tambahkan kata "negative" di nama file hasil generate.

  Simpan hasil dalam file .feature di folder features. 

### 2. Generate ID Elemen dari `Gherkin.feature` Positif & Negatif

- **Tujuan**: Menghasilkan ID yang nanti akan digunakan oleh DEV dan QA di proses Development

- **Prompt Copilot**:
  Buatkan ID untuk setiap field atau button berdasarkan skenario Gherkin "login.feature" dan "negative_login.feature" simpan dalam folder "Id" dalam bentuk file txt

- **Prompt Copilot II**:
  Buatkan ID yang bisa digunakan untuk automation testing di Robot Framework berdasarkan langkah-langkah Gherkin berikut.  
  Gunakan format snake_case, tanpa spasi, dan berikan prefix sesuai konteks:  
  - `page_` untuk halaman  
  - `btn_` untuk tombol  
  - `input_` untuk field  
  - `chk_` untuk checkbox  
  - `msg_` untuk notifikasi  
  - `row_` untuk data di tabel
  Simpan dalam folder "Id" dalam bentuk file txt

### 3. Gherkin.feature di generate kedalam bentuk .robot dan .resource menggunakan gherkin2robotframework

- **Tujuan**: menghasilkan file .robot dan .resource

### 4. Membuat file <fitur>Req.txt

- **Tujuan**: membuat requirement atau rule tiap fitur. 
  
  Example isi file txt:
  beberapa ketentuan:
  - URL https://gherkin-pilot-web.stagingapps.net/auth/sign_up
  - Browser menggunakan Chrome
  - tambahkan sleep 1 detik disetiap action
  - tambahkan page screen shot embed diakhir pengujian

### 5. Mengisi file .resource berdasarkan ID, .robot, <fitur>Req.txt

- **Tujuan**: mengisi .resource yang sudah digenerate

- **Prompt Copilot**:
    Lengkapi isi file "login_functionality_step_definitions.resource" berdasarkan langkah-langkah di "login_functionality.robot".  
    Gunakan ID elemen dari file "login_ids.txt" untuk setiap locator yang dibutuhkan.  
    Ikuti ketentuan pengisian dan validasi dari "loginReq.txt"


  **Prompt Copilot II**:
  Lengkapi file resource step definitions untuk fitur Role Management berdasarkan skenario di file .robot

  - Gunakan ID elemen dari file role_management_ids.txt untuk setiap locator yang dibutuhkan.
  - Pastikan setiap keyword di resource file sesuai dengan langkah pada file robot (misal: login, klik tombol, isi field, verifikasi notifikasi, dsb).
  - Setiap keyword harus menggunakan SeleniumLibrary dan locator yang konsisten dengan ID di file ID.
  - Jika ada validasi atau notifikasi, gunakan ID/message yang sesuai dengan file ID.
  - Ikuti ketentuan pengisian dan validasi dari file requirement terkait (misal: URL, kredensial, browser).
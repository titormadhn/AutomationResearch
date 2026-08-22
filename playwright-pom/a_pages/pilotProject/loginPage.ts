import { Page } from '@playwright/test';

export class LoginPage {
  readonly page: Page;
  readonly url = 'https://gherkin-pilot-web.stagingapps.net/auth/sign_in';
  readonly usernameField = '//input[@id="user_email"]';
  readonly passwordField = '//input[@id="user_password"]';
  readonly captchaCheckbox = '//iframe[contains(@src, "recaptcha")]';
  readonly loginButton = '//input[@id="submit"]';
  readonly dashboardHeader = '//div/a[@class="py-3 text-base font-bold px-7 text-dark hover:text-primary"][1]';

  constructor(page: Page) {
    this.page = page;
  }

  async open() {
    await this.page.goto(this.url);
  }

  async login(username: string, password: string) {
    await this.page.fill(this.usernameField, username);
    await this.page.fill(this.passwordField, password);
    // Klik checkbox CAPTCHA
    const captchaFrame = this.page.frameLocator('iframe[title="reCAPTCHA"]');
    await captchaFrame.getByRole('checkbox', {name: "I'm not a robot"}).click();
    console.log('⏳ Menunggu CAPTCHA diselesaikan...'); // Tunggu sampai CAPTCHA selesai diselesaikan secara manual
    await waitUntilCaptchaSolved(this.page);
    console.log('✅ CAPTCHA terdeteksi selesai, melanjutkan login...');
    // Validasi token CAPTCHA terisi
    const token = await captchaTokenShouldExist(this.page);
    console.log('✅ CAPTCHA selesai, token tersedia:', token.substring(0, 20) + '...');
    // Lanjutkan proses login
    await this.page.click(this.loginButton);
    await this.page.waitForTimeout(15000);
    const isDashboardVisible = await this.page.isVisible(this.dashboardHeader);
    if (!isDashboardVisible) {
      console.error('❌ Gagal login: Dashboard tidak muncul setelah login.');
      throw new Error('Dashboard header tidak terlihat — kemungkinan login gagal.');
    } else {
      console.log('✅ Login berhasil, dashboard terlihat.');
    }
  }
}

// Handling Captcha Functions
export async function waitUntilCaptchaSolved(page: Page) {
  await page.waitForFunction(() => {
    const token = (document.getElementById('g-recaptcha-response') as HTMLInputElement)
      ?.value;
    return token && token.trim().length > 0;
  }, null, { timeout: 300000 });
}

export async function captchaTokenShouldExist(page: Page) {
  const token = await page.evaluate(() => {
    return (document.getElementById('g-recaptcha-response') as HTMLInputElement)?.value;
  });

  if (!token || token.trim() === '') {
    throw new Error('CAPTCHA token is empty');
  }

  return token;
}


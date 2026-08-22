import { test, expect } from '@playwright/test';
import { LoginPage } from '../../a_pages/pilotProject/loginPage';
import { waitUntilCaptchaSolved, captchaTokenShouldExist } from '../../a_pages/pilotProject/loginPage';

// Record Default From Playwright
test('login with valid credentials', async ({ page }) => {
  await page.goto('https://gherkin-pilot-web.stagingapps.net/auth/sign_in');
  await page.getByRole('textbox', { name: 'Email' }).click();
  await page.getByRole('textbox', { name: 'Email' }).fill('tito136@yopmail.com');
  await page.getByRole('textbox', { name: 'Password' }).click();
  await page.getByRole('textbox', { name: 'Password' }).fill('P@ssw0rd');
  // Klik checkbox CAPTCHA
  const captchaFrame = page.locator('iframe[src*="recaptcha"]').contentFrame();
  await captchaFrame.getByRole('checkbox', { name: "I'm not a robot" }).click();
  // Tunggu user menyelesaikan CAPTCHA secara manual
  console.log('⏳ Menunggu CAPTCHA diselesaikan...');
  await waitUntilCaptchaSolved(page);
  // Validasi token CAPTCHA terisi
  const token = await captchaTokenShouldExist(page);
  console.log('✅ CAPTCHA selesai, token tersedia:', token.substring(0, 20) + '...');
  // Klik tombol login
  await page.getByRole('button', { name: 'Masuk' }).click();
});

// Using Page Object Model 
test('TC01-login dengan valid credentials', async ({ page }) => {
  const loginPage = new LoginPage(page);
  await loginPage.open();
  await loginPage.login('tito136@yopmail.com', 'P@ssw0rd');
});
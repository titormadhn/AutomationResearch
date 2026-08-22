import { LoginPage } from '../../a_pages/pilotProject/loginPage';
import { createBdd, test } from 'playwright-bdd';
//import { test } from '../../c_steps/fixtures';
// import {Given, When, Then} from '../fixtures';

//Configure BDD Gherkin
const { Given, When, Then } = createBdd(test);

//BackGround
Given('user open browser', async ({ page }) => {
    console.log('🌐 Browser opened');
 }
);

Given('navigate to the login page',async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.open();
 }
);

//Scenario: TC-01: User login with valid credentials
Given('User berada pada halaman login Pilot Project', async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.visibleLoginPage();
 }
);

When('User input email', async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.inputEmail('tito136@yopmail.com');
 }
);

When('User input Password', async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.inputPassword('P@ssw0rd');
 }
);

When('User input Captcha untuk validasi', async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.solveCaptcha();
 }
);

When('User klik button Submit', async ({ page }) => {
    const loginPage = new LoginPage(page);
    await loginPage.clickLoginButton();
 }
);

Then('User berhasil login dan diarahkan ke halaman Dashboard Pilot Project', async ({ page }) => {
    const loginPage = new LoginPage(page);
    const isDashboardVisible = await loginPage.visibleDashboard();
 }
);
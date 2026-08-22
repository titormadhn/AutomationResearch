// Generated from: b_features\pilotProject\login.feature
import { test } from "playwright-bdd";

test.describe('Login', () => {

  test.beforeEach('Background', async ({ Given, And, page }, testInfo) => { if (testInfo.error) return;
    await Given('user open browser', null, { page }); 
    await And('navigate to the login page', null, { page }); 
  });
  
  test('Login dengan valid credentials', { tag: ['@LoginPilotProject', '@valid'] }, async ({ Given, When, Then, And, page }) => { 
    await Given('User berada pada halaman login Pilot Project', null, { page }); 
    await When('User input email', null, { page }); 
    await And('User input Password', null, { page }); 
    await And('User input Captcha untuk validasi', null, { page }); 
    await And('User klik button Submit', null, { page }); 
    await Then('User berhasil login dan diarahkan ke halaman Dashboard Pilot Project', null, { page }); 
  });

});

// == technical section ==

test.use({
  $test: [({}, use) => use(test), { scope: 'test', box: true }],
  $uri: [({}, use) => use('b_features\\pilotProject\\login.feature'), { scope: 'test', box: true }],
  $bddFileData: [({}, use) => use(bddFileData), { scope: "test", box: true }],
});

const bddFileData = [ // bdd-data-start
  {"pwTestLine":11,"pickleLine":9,"tags":["@LoginPilotProject","@valid"],"steps":[{"pwStepLine":7,"gherkinStepLine":5,"keywordType":"Context","textWithKeyword":"Given user open browser","isBg":true,"stepMatchArguments":[]},{"pwStepLine":8,"gherkinStepLine":6,"keywordType":"Context","textWithKeyword":"And navigate to the login page","isBg":true,"stepMatchArguments":[]},{"pwStepLine":12,"gherkinStepLine":10,"keywordType":"Context","textWithKeyword":"Given User berada pada halaman login Pilot Project","stepMatchArguments":[]},{"pwStepLine":13,"gherkinStepLine":11,"keywordType":"Action","textWithKeyword":"When User input email","stepMatchArguments":[]},{"pwStepLine":14,"gherkinStepLine":12,"keywordType":"Action","textWithKeyword":"And User input Password","stepMatchArguments":[]},{"pwStepLine":15,"gherkinStepLine":13,"keywordType":"Action","textWithKeyword":"And User input Captcha untuk validasi","stepMatchArguments":[]},{"pwStepLine":16,"gherkinStepLine":14,"keywordType":"Action","textWithKeyword":"And User klik button Submit","stepMatchArguments":[]},{"pwStepLine":17,"gherkinStepLine":15,"keywordType":"Outcome","textWithKeyword":"Then User berhasil login dan diarahkan ke halaman Dashboard Pilot Project","stepMatchArguments":[]}]},
]; // bdd-data-end
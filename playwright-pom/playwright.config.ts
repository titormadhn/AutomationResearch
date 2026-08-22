import { defineConfig } from '@playwright/test';

export default defineConfig({
  timeout: 660000, // 11 menit

  use: {
    baseURL: 'https://example.com',
    headless: false,
    screenshot: 'on', //'only-on-failure'
    video: 'on', //'retain-on-failure'
    // trace: 'on', //'retain-on-failure'
  },

  reporter: [  //Config Report
    ['list'],
    ['html', { outputFolder: 'report' }],
  ],

  //  reporter: [  //Config Report - Custom Folder
  //   ['list'], // Output terminal
  //   ['html', {
  //     outputFolder: 'reports/html-report',
  //     open: 'never',
  //   }], // HTML report bawaan Playwright
  //   ['./reporter/evidence-reporter.ts'],  // Custom evidence reporter
  // ],
  
});
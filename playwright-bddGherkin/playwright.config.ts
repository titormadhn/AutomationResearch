import { defineConfig } from '@playwright/test';
import { defineBddConfig } from 'playwright-bdd';

const testDir = defineBddConfig({
  features: './b_features/**/*.feature',
  steps: './c_steps/**/*.ts',
  outputDir: './.features-gen',
});

export default defineConfig({
  testDir,
  timeout: 660000,
  outputDir: './test-results',

  use: {
    baseURL: 'https://example.com',
    headless: false,
    screenshot: 'on',
    video: 'on',
  },

  reporter: [
    ['list'],
    ['html', {outputFolder: 'report',}],
  ],
  
});
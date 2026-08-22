// Contoh file test agar TypeScript menemukan input
import { test, expect } from '@playwright/test';

import { Page } from '@playwright/test';

test('basic test', async ({ page }: { page: Page }) => {
  await page.goto('https://playwright.dev');
  expect(await page.title()).toContain('Playwright');
});
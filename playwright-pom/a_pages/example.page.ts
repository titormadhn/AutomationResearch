// Contoh file page agar TypeScript menemukan input
export class ExamplePage {
  async open(page: any) {
    await page.goto('https://playwright.dev');
  }
}

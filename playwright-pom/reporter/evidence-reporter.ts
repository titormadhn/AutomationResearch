//Function custom reporter untuk menyalin evidence (screenshot, video, trace) 
// ke folder evidence dan membuat index.html untuk setiap test case.
import {
  FullConfig,
  FullResult,
  Reporter,
  TestCase,
  TestResult,
} from '@playwright/test/reporter';

import * as fs from 'fs';
import * as path from 'path';

class EvidenceReporter implements Reporter {

  private evidenceDir = path.resolve('evidence');

  onBegin(config: FullConfig) {

    console.log('\n======================================');
    console.log('Starting Evidence Reporter');
    console.log('======================================');

    fs.mkdirSync(this.evidenceDir, {
      recursive: true,
    });
  }

  onTestEnd(
    test: TestCase,
    result: TestResult
  ) {

    // ==========================================
    // Menentukan nama folder evidence
    // ==========================================

    const evidenceFolderName =
      this.getEvidenceFolderName(test);

    const testDir = path.join(
      this.evidenceDir,
      evidenceFolderName
    );

    const screenshotDir = path.join(
      testDir,
      'screenshot'
    );

    const videoDir = path.join(
      testDir,
      'video'
    );

    const traceDir = path.join(
      testDir,
      'trace'
    );

    // ==========================================
    // Buat directory
    // ==========================================

    fs.mkdirSync(screenshotDir, {
      recursive: true,
    });

    fs.mkdirSync(videoDir, {
      recursive: true,
    });

    fs.mkdirSync(traceDir, {
      recursive: true,
    });

    console.log(
      `\nEvidence folder: ${evidenceFolderName}`
    );

    // ==========================================
    // Copy attachments
    // ==========================================

    for (const attachment of result.attachments) {

      if (!attachment.path) {
        continue;
      }

      const sourcePath = attachment.path;

      // Screenshot
      if (
        attachment.contentType === 'image/png' ||
        attachment.name
          .toLowerCase()
          .includes('screenshot')
      ) {

        const destinationPath = path.join(
          screenshotDir,
          path.basename(sourcePath)
        );

        fs.copyFileSync(
          sourcePath,
          destinationPath
        );

        console.log(
          `Screenshot: ${destinationPath}`
        );
      }

      // Video
      else if (
        attachment.contentType === 'video/webm' ||
        attachment.name
          .toLowerCase()
          .includes('video')
      ) {

        const destinationPath = path.join(
          videoDir,
          path.basename(sourcePath)
        );

        fs.copyFileSync(
          sourcePath,
          destinationPath
        );

        console.log(
          `Video: ${destinationPath}`
        );
      }

      // Trace
      else if (
        attachment.name
          .toLowerCase()
          .includes('trace') ||
        attachment.contentType === 'application/zip'
      ) {

        const destinationPath = path.join(
          traceDir,
          path.basename(sourcePath)
        );

        fs.copyFileSync(
          sourcePath,
          destinationPath
        );

        console.log(
          `Trace: ${destinationPath}`
        );
      }
    }

    // ==========================================
    // Generate HTML
    // ==========================================

    this.generateHtml(
      test,
      result,
      testDir
    );
  }

  onEnd(result: FullResult) {

    console.log('\n======================================');
    console.log(
      `Evidence generation completed: ${result.status}`
    );
    console.log('======================================\n');
  }

  // =========================================================
  // Menentukan nama folder:
  //
  // pilotProject_login_TC01
  // =========================================================

  private getEvidenceFolderName(
    test: TestCase
  ): string {

    // Contoh:
    //
    // C:\...\b_tests\pilotProject\login.spec.ts

    const fileName = path.basename(
      test.location.file
    );

    // login.spec.ts
    //       ↓
    // login

    const specName = fileName
      .replace(/\.spec\.(ts|js)$/i, '');

    // pilotProject
    const projectName = path.basename(
      path.dirname(test.location.file)
    );

    // TC01-login dengan valid credentials
    // ↓
    // TC01

    const match = test.title.match(
      /^(TC\d+)/i
    );

    const testId = match
      ? match[1].toUpperCase()
      : 'NO-ID';

    return this.sanitizeName(
      `${projectName}_${specName}_${testId}`
    );
  }

  // =========================================================
  // Generate index.html
  // =========================================================

  private generateHtml(
    test: TestCase,
    result: TestResult,
    testDir: string
  ) {

    const screenshotDir = path.join(
      testDir,
      'screenshot'
    );

    const videoDir = path.join(
      testDir,
      'video'
    );

    const screenshotFiles =
      this.getFiles(screenshotDir);

    const videoFiles =
      this.getFiles(videoDir);

    // Screenshot HTML
    const screenshotHtml =
      screenshotFiles
        .map(file => `
          <div class="evidence-item">
            <h3>Screenshot</h3>

            <img
              src="screenshot/${encodeURIComponent(file)}"
              alt="Screenshot"
            />
          </div>
        `)
        .join('');

    // Video HTML
    const videoHtml =
      videoFiles
        .map(file => `
          <div class="evidence-item">
            <h3>Video</h3>

            <video controls>
              <source
                src="video/${encodeURIComponent(file)}"
                type="video/webm"
              />

              Browser tidak mendukung video.
            </video>
          </div>
        `)
        .join('');

    const statusClass =
      result.status === 'passed'
        ? 'passed'
        : result.status === 'failed'
          ? 'failed'
          : 'other';

    const html = `
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

  <title>${this.escapeHtml(test.title)}</title>

  <style>

    body {
      font-family: Arial, sans-serif;
      margin: 40px;
      background: #f5f5f5;
    }

    .container {
      max-width: 1200px;
      margin: auto;
      background: white;
      padding: 30px;
      border-radius: 8px;
    }

    .info {
      padding: 15px;
      background: #f5f5f5;
      border-radius: 5px;
      margin-bottom: 30px;
    }

    .passed {
      color: green;
      font-weight: bold;
    }

    .failed {
      color: red;
      font-weight: bold;
    }

    .other {
      color: orange;
      font-weight: bold;
    }

    .evidence-item {
      margin-top: 30px;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 8px;
    }

    img {
      max-width: 100%;
      border: 1px solid #ccc;
    }

    video {
      width: 100%;
      max-width: 1000px;
    }

  </style>

</head>

<body>

<div class="container">

  <h1>
    ${this.escapeHtml(test.title)}
  </h1>

  <div class="info">

    <p>
      <strong>Status:</strong>

      <span class="${statusClass}">
        ${result.status}
      </span>
    </p>

    <p>
      <strong>Duration:</strong>
      ${result.duration} ms
    </p>

    <p>
      <strong>Test File:</strong>
      ${this.escapeHtml(test.location.file)}
    </p>

  </div>

  <h2>Screenshot</h2>

  ${
    screenshotHtml ||
    '<p>No screenshot available.</p>'
  }

  <h2>Video</h2>

  ${
    videoHtml ||
    '<p>No video available.</p>'
  }

</div>

</body>

</html>
`;

    fs.writeFileSync(
      path.join(testDir, 'index.html'),
      html,
      'utf-8'
    );
  }

  // =========================================================
  // Ambil file dalam directory
  // =========================================================

  private getFiles(
    dir: string
  ): string[] {

    if (!fs.existsSync(dir)) {
      return [];
    }

    return fs
      .readdirSync(dir)
      .filter(file => {
        return fs.statSync(
          path.join(dir, file)
        ).isFile();
      });
  }

  // =========================================================
  // Bersihkan nama folder
  // =========================================================

  private sanitizeName(
    name: string
  ): string {

    return name
      .replace(/[<>:"/\\|?*]/g, '_')
      .replace(/\s+/g, '_');
  }

  // =========================================================
  // Escape HTML
  // =========================================================

  private escapeHtml(
    value: string
  ): string {

    return value
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#039;');
  }
}

export default EvidenceReporter;
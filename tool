<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pixel resizer · any photo</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
    }
    body {
      background: linear-gradient(145deg, #f6f9fc 0%, #e9f1f8 100%);
      min-height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 1.5rem;
    }
    .card {
      max-width: 1000px;
      width: 100%;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-radius: 2.5rem;
      box-shadow: 0 20px 40px -12px rgba(0,20,40,0.35),
                  inset 0 1px 2px rgba(255,255,255,0.6);
      padding: 2rem 2rem 2.5rem;
      border: 1px solid rgba(255,255,255,0.5);
    }
    h1 {
      font-weight: 600;
      font-size: 2.2rem;
      letter-spacing: -0.02em;
      margin: 0 0 0.25rem 0;
      color: #0a2a44;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    h1 span {
      background: #1b3b5c;
      color: white;
      font-size: 0.9rem;
      font-weight: 500;
      padding: 0.2rem 1rem;
      border-radius: 40px;
      margin-left: 0.75rem;
      letter-spacing: normal;
      vertical-align: middle;
    }
    .sub {
      color: #2c4e6e;
      margin-top: -0.2rem;
      margin-bottom: 2rem;
      font-size: 1.05rem;
      border-left: 4px solid #5688b7;
      padding-left: 1rem;
    }
    .upload-area {
      background: #ffffffd9;
      border-radius: 2rem;
      padding: 1.5rem 1.5rem 1.8rem;
      box-shadow: inset 0 2px 6px rgba(0,0,0,0.02), 0 8px 18px rgba(0,40,70,0.1);
      border: 1px solid white;
    }
    .file-row {
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
    }
    .file-label {
      background: #0f2f4b;
      color: white;
      padding: 0.75rem 2rem;
      border-radius: 3rem;
      font-weight: 500;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.15s;
      border: 1px solid #4775a3;
      box-shadow: 0 6px 14px rgba(12, 52, 86, 0.2);
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
    }
    .file-label:hover {
      background: #1b4463;
      transform: scale(1.02);
    }
    .file-label:active {
      transform: scale(0.98);
    }
    #fileInput {
      position: absolute;
      opacity: 0;
      width: 0.1px;
      height: 0.1px;
    }
    .file-hint {
      color: #31658c;
      font-weight: 450;
      background: #e3eef9;
      padding: 0.5rem 1.2rem;
      border-radius: 3rem;
      font-size: 0.95rem;
    }
    .control-panel {
      margin-top: 2rem;
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
      align-items: flex-end;
    }
    .dimension-group {
      display: flex;
      flex-wrap: wrap;
      gap: 1.5rem;
      align-items: flex-end;
      flex: 2 1 300px;
    }
    .input-unit {
      display: flex;
      flex-direction: column;
      gap: 0.4rem;
    }
    .input-unit label {
      font-size: 0.85rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      color: #1d4a72;
      margin-left: 0.5rem;
    }
    .input-unit input {
      background: white;
      border: 1.5px solid #b9d4ec;
      border-radius: 2.5rem;
      padding: 0.7rem 1.2rem;
      font-size: 1.2rem;
      width: 140px;
      font-weight: 500;
      color: #0a293f;
      outline: none;
      transition: 0.15s;
      box-shadow: inset 0 2px 5px rgba(0,0,0,0.02);
    }
    .input-unit input:focus {
      border-color: #2b6a9e;
      box-shadow: 0 0 0 3px rgba(33, 103, 171, 0.2);
    }
    .input-unit input[type=number]::-webkit-inner-spin-button {
      opacity: 0.5;
    }
    .aspect-box {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      background: #ddeeff;
      padding: 0.45rem 1.3rem 0.45rem 1rem;
      border-radius: 3rem;
      border: 1px solid #b3cef0;
      margin-bottom: 0.25rem;
    }
    .aspect-box input[type=checkbox] {
      width: 1.2rem;
      height: 1.2rem;
      accent-color: #1b5a8c;
      margin: 0;
    }
    .aspect-box label {
      font-weight: 500;
      color: #134472;
      font-size: 0.95rem;
    }
    .action-buttons {
      display: flex;
      gap: 1rem;
      align-items: center;
      flex-wrap: wrap;
    }
    .primary-btn {
      background: #145a8a;
      border: none;
      color: white;
      font-weight: 600;
      padding: 0.8rem 2.2rem;
      border-radius: 3rem;
      font-size: 1.2rem;
      cursor: pointer;
      box-shadow: 0 6px 16px #145a8a60;
      transition: 0.1s;
      border: 1px solid #4794d1;
      letter-spacing: 0.3px;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    .primary-btn:hover {
      background: #1d6da5;
      transform: scale(1.02);
      box-shadow: 0 10px 22px #145a8a80;
    }
    .primary-btn:active {
      transform: scale(0.97);
    }
    .download-btn {
      background: #2f6744;
      box-shadow: 0 6px 16px #1f5436a0;
      padding: 0.8rem 2rem;
      font-size: 1.1rem;
    }
    .download-btn:hover {
      background: #3c7e55;
    }
    .download-btn:disabled {
      opacity: 0.3;
      pointer-events: none;
      filter: grayscale(0.6);
    }
    .preview-area {
      margin-top: 2.5rem;
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
      justify-content: center;
    }
    .preview-card {
      background: white;
      border-radius: 2rem;
      padding: 1.2rem 1.2rem 1.5rem;
      box-shadow: 0 10px 26px rgba(0, 32, 64, 0.15);
      flex: 1 1 250px;
      text-align: center;
      border: 1px solid #ffffffaa;
    }
    .preview-card h3 {
      margin: 0 0 1rem 0;
      font-weight: 500;
      color: #2e4e70;
      font-size: 1.2rem;
      border-bottom: 2px dashed #bbd2ed;
      padding-bottom: 0.5rem;
    }
    .image-container {
      border-radius: 1.4rem;
      overflow: hidden;
      background: #deecf9;
      min-height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid white;
      box-shadow: inset 0 2px 10px rgba(0,0,0,0.05);
    }
    .image-container img {
      max-width: 100%;
      max-height: 280px;
      display: block;
      object-fit: contain;
    }
    .dim-badge {
      margin-top: 0.7rem;
      background: #eaf3fc;
      padding: 0.4rem 1rem;
      border-radius: 3rem;
      font-size: 0.9rem;
      color: #103856;
      font-weight: 500;
    }
    .fallback-note {
      color: #617e9c;
      font-style: italic;
      padding: 1rem;
    }
    footer {
      text-align: center;
      margin-top: 1.8rem;
      color: #5a7794;
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
<div class="card">
  <h1>
    ✦ pixel resizer
    <span>any photo</span>
  </h1>
  <div class="sub">upload → set new pixel dimensions → download</div>

  <div class="upload-area">
    <div class="file-row">
      <label for="fileInput" class="file-label">
        <span>📁</span> choose image
      </label>
      <input type="file" id="fileInput" accept="image/png, image/jpeg, image/webp, image/gif, image/bmp, image/avif">
      <div class="file-hint">PNG, JPG, WEBP, GIF, …</div>
    </div>

    <div class="control-panel">
      <div class="dimension-group">
        <div class="input-unit">
          <label>WIDTH (px)</label>
          <input type="number" id="widthInput" placeholder="width" min="1" step="1" value="800">
        </div>
        <div class="input-unit">
          <label>HEIGHT (px)</label>
          <input type="number" id="heightInput" placeholder="height" min="1" step="1" value="600">
        </div>
        <div class="aspect-box">
          <input type="checkbox" id="lockAspect" checked>
          <label for="lockAspect">🔒 keep ratio</label>
        </div>
      </div>

      <div class="action-buttons">
        <button class="primary-btn" id="resizeBtn">✨ resize</button>
        <a id="downloadLink" download="resized_image.png" style="text-decoration: none;">
          <button class="primary-btn download-btn" id="downloadBtn" disabled>⬇ download</button>
        </a>
      </div>
    </div>
  </div>

  <!-- preview side by side -->
  <div class="preview-area">
    <div class="preview-card">
      <h3>original</h3>
      <div class="image-container" id="originalPreview">
        <img id="originalImg" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='150' viewBox='0 0 200 150'%3E%3Crect width='200' height='150' fill='%23d4e3f2'/%3E%3Ctext x='20' y='85' font-family='system-ui' font-size='14' fill='%23395e7a'%3Eno image%3C/text%3E%3C/svg%3E" alt="original">
      </div>
      <div class="dim-badge" id="originalDims">– x –</div>
    </div>
    <div class="preview-card">
      <h3>resized output</h3>
      <div class="image-container" id="resizedPreview">
        <img id="resizedImg" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='150' viewBox='0 0 200 150'%3E%3Crect width='200' height='150' fill='%23e3eef9'/%3E%3Ctext x='20' y='85' font-family='system-ui' font-size='14' fill='%23395e7a'%3Epreview%3C/text%3E%3C/svg%3E" alt="resized">
      </div>
      <div class="dim-badge" id="resizedDims">– x –</div>
    </div>
  </div>
  <footer>pixel resizer works offline · canvas based · no upload to server</footer>
</div>

<script>
  (function() {
    // ----- DOM elements -----
    const fileInput = document.getElementById('fileInput');
    const widthInput = document.getElementById('widthInput');
    const heightInput = document.getElementById('heightInput');
    const lockCheck = document.getElementById('lockAspect');
    const resizeBtn = document.getElementById('resizeBtn');
    const downloadBtn = document.getElementById('downloadBtn');
    const downloadLink = document.getElementById('downloadLink');

    const originalImg = document.getElementById('originalImg');
    const resizedImg = document.getElementById('resizedImg');
    const originalDims = document.getElementById('originalDims');
    const resizedDims = document.getElementById('resizedDims');

    // ----- state -----
    let originalImage = null;           // HTMLImageElement after load
    let originalWidth = 0, originalHeight = 0;
    let resizedObjectURL = null;        // for download & preview

    // ----- helper: clean up old object url -----
    function revokeResizedURL() {
      if (resizedObjectURL) {
        URL.revokeObjectURL(resizedObjectURL);
        resizedObjectURL = null;
      }
    }

    // ----- update original preview & set default dimensions -----
    function loadImageFromFile(file) {
      if (!file) return;

      // reset download button
      downloadBtn.disabled = true;
      revokeResizedURL();

      const reader = new FileReader();
      reader.onload = (e) => {
        const img = new Image();
        img.onload = () => {
          originalImage = img;
          originalWidth = img.naturalWidth;
          originalHeight = img.naturalHeight;

          // set original preview
          originalImg.src = e.target.result;
          originalDims.textContent = `${originalWidth} x ${originalHeight}`;

          // set width/height inputs to original dimensions (only if they were empty or default)
          widthInput.value = originalWidth;
          heightInput.value = originalHeight;

          // clear resized preview
          resizedImg.src = 'data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'200\' height=\'150\' viewBox=\'0 0 200 150\'%3E%3Crect width=\'200\' height=\'150\' fill=\'%23e3eef9\'/%3E%3Ctext x=\'20\' y=\'85\' font-family=\'system-ui\' font-size=\'14\' fill=\'%23395e7a\'%3Eresized%3C/text%3E%3C/svg%3E';
          resizedDims.textContent = '– x –';

          // (optional) trigger a resize right away? we wait for manual click.
        };
        img.src = e.target.result;
      };
      reader.readAsDataURL(file);
    }

    // ----- aspect ratio lock handler -----
    function adjustHeightFromWidth() {
      if (!lockCheck.checked || !originalImage) return;
      const newWidth = parseInt(widthInput.value, 10);
      if (!isNaN(newWidth) && newWidth > 0 && originalWidth) {
        const ratio = originalHeight / originalWidth;
        const newHeight = Math.round(newWidth * ratio);
        heightInput.value = newHeight;
      }
    }

    function adjustWidthFromHeight() {
      if (!lockCheck.checked || !originalImage) return;
      const newHeight = parseInt(heightInput.value, 10);
      if (!isNaN(newHeight) && newHeight > 0 && originalHeight) {
        const ratio = originalWidth / originalHeight;
        const newWidth = Math.round(newHeight * ratio);
        widthInput.value = newWidth;
      }
    }

    // input event listeners for aspect lock
    widthInput.addEventListener('input', adjustHeightFromWidth);
    heightInput.addEventListener('input', adjustWidthFromHeight);

    // when lock is turned off, no auto adjustment
    // but we don't want to mess values, just no auto

    // ----- file input change -----
    fileInput.addEventListener('change', (e) => {
      const file = e.target.files[0];
      if (file) {
        loadImageFromFile(file);
      }
    });

    // ----- resize action -----
    resizeBtn.addEventListener('click', () => {
      if (!originalImage) {
        alert('Please select an image first.');
        return;
      }

      let newWidth = parseInt(widthInput.value, 10);
      let newHeight = parseInt(heightInput.value, 10);

      // validate numbers
      if (isNaN(newWidth) || newWidth <= 0) newWidth = originalWidth;
      if (isNaN(newHeight) || newHeight <= 0) newHeight = originalHeight;
      // optional sanity cap (avoid giant canvas crash, but user can handle)
      const MAX_DIM = 5000;
      if (newWidth > MAX_DIM || newHeight > MAX_DIM) {
        if (!confirm(`Dimensions are large (${newWidth}x${newHeight}). Proceed? Canvas might be slow.`)) {
          return;
        }
      }

      // if aspect locked, enforce ratio based on original (but inputs might already be consistent)
      if (lockCheck.checked && originalWidth && originalHeight) {
        const ratio = originalHeight / originalWidth;
        // prefer using width as base if it was last changed? simpler: use width to compute height
        // but we'll keep whichever user typed: we can trust that event handlers already kept ratio.
        // However event handlers might not have fired if lock was just turned on.
        // We'll recalc based on width to be safe (consistent with adjustHeightFromWidth)
        newHeight = Math.round(newWidth * (originalHeight / originalWidth));
        heightInput.value = newHeight; // update input
      }

      // create canvas
      const canvas = document.createElement('canvas');
      canvas.width = newWidth;
      canvas.height = newHeight;
      const ctx = canvas.getContext('2d');

      // draw resized (image smoothing = good for photos)
      ctx.imageSmoothingEnabled = true;
      ctx.imageSmoothingQuality = 'high';
      ctx.drawImage(originalImage, 0, 0, newWidth, newHeight);

      // generate preview and download link
      canvas.toBlob((blob) => {
        if (!blob) return;
        revokeResizedURL(); // cleanup old
        const url = URL.createObjectURL(blob);
        resizedObjectURL = url;

        // set resized preview
        resizedImg.src = url;
        resizedDims.textContent = `${newWidth} x ${newHeight}`;

        // enable download with correct filename
        downloadBtn.disabled = false;
        // get original filename extension hint
        const file = fileInput.files[0];
        let ext = 'png';
        if (file) {
          const name = file.name;
          const match = name.match(/\.([^.]+)$/);
          if (match && ['jpg','jpeg','png','webp','gif','bmp'].includes(match[1].toLowerCase())) {
            ext = match[1].toLowerCase();
            if (ext === 'jpg') ext = 'jpeg'; // canvas toBlob default for jpeg
          }
        }
        // set download link
        downloadLink.download = `resized_${newWidth}x${newHeight}.${ext === 'jpg' ? 'jpeg' : ext}`;
        downloadLink.href = url;
      }, 'image/png'); // default png, but blob type could be improved: use image/jpeg for large? keep png safe.
    });

    // ----- download button disable if no resized image -----
    // also when new file loads, download is disabled (already in loadImage)

    // ----- extra: cleanup object URL when page unload -----
    window.addEventListener('beforeunload', () => {
      revokeResizedURL();
    });

    // ----- initialize with empty / demo behavior: allow manual entry -----
    // if user wants to resize without image, we can't. so we keep image mandatory.
    // for better UX, maybe show sample? but we stay clear.

    // Optional: drag-drop? not required, but can be a plus; but we keep simple.

    // update originalDims when no image
    // set default text
    originalDims.textContent = '– x –';
  })();
</script>
</body>
</html>

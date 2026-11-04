import { defineConfig } from 'vite';

// The form calls /ehrbase/... on its own address; Vite forwards that to the
// EHRbase container. Same origin = no CORS and no credentials in the code.
export default defineConfig({
  server: {
    // Codespaces serves the preview from *.app.github.dev
    allowedHosts: ['.app.github.dev', 'localhost'],
    proxy: {
      '/ehrbase': { target: 'http://ehrbase:8080', changeOrigin: true },
    },
  },
});

// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://rehabrate.com', // Replace with your actual domain
  base: '/',
  output: 'static',
  vite: {
    build: {
      assetsInlineLimit: 0, // Don't inline any assets
      cssCodeSplit: false, // Generate a single CSS file
    },
  },
  build: {
    format: 'file',
    assets: '_assets',
    // Ensure all assets use relative paths
    inlineStylesheets: 'never'
  }
});

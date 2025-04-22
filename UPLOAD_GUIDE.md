# RehabRate Website Upload Guide

This guide will help you properly upload the RehabRate website to your hosting provider.

## Before Uploading

Make sure you have built the project using:

```bash
npm run build
```

This will create the necessary files for your website in the current directory.

## Important Note

The project has been configured to use relative paths to ensure maximum compatibility with different hosting environments. This means you can upload the files to any directory on your server, and the site should work properly.

## Uploading Instructions

1. **Upload ALL files from the current directory** to your web hosting service's root directory (often called `public_html`, `www`, or `htdocs`).

2. **Required files to upload:**
   - `index.html` - The main landing page
   - `about.html` - The about page
   - `contact.html` - The contact page
   - `_assets/` directory - Contains CSS files
   - `images/` directory - Contains image files
   - `favicon.svg` - The site icon

3. **Maintain the directory structure** exactly as it appears in your local directory.

## Troubleshooting

If you only see "Astro" text or are having other issues after uploading:

1. **Check if all files were uploaded**: Make sure ALL files, including the CSS file in `_assets/`, were uploaded correctly.

2. **Check file permissions**: The files should have proper read permissions (usually 644).

3. **Path issues**: Make sure the paths in your HTML files are correct. They should be using relative paths like:
   - `./favicon.svg` or `../favicon.svg` for the favicon
   - `./_assets/style.*.css` or `../_assets/style.*.css` for CSS files
   - `./images/hero-placeholder.svg` or `../images/hero-placeholder.svg` for images

4. **Server configuration**: Some servers might need configuration for handling static sites. If you're using Apache, you might need an `.htaccess` file.

## Easy Upload Method (Recommended)

For the easiest upload experience, use the provided script:

```bash
./upload.sh
```

This script will:
1. Build the website
2. Create a zip file of all necessary files
3. Guide you through the upload process

## Manual Upload Method

If you prefer to upload manually:

1. Zip all the necessary files:
```bash
zip -r rehabrate-site.zip index.html about.html contact.html _assets/ images/ favicon.svg
```

2. Upload the ZIP file to your server and extract it there.

## After Uploading

1. Visit your website URL to make sure everything is working correctly.

2. Test on different devices and browsers to ensure responsive design works as expected.

3. Check all links and navigation to make sure they're working properly.

If you still encounter issues, please don't hesitate to contact technical support.
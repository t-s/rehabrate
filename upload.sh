#!/bin/bash

# RehabRate Site Uploader Script
# This script helps prepare and upload the RehabRate website to your server

echo "🚀 RehabRate Website Uploader"
echo "=============================="
echo

# Build the website
echo "📦 Building the website..."
npm run build

# Check if build was successful
if [ $? -ne 0 ]; then
  echo "❌ Build failed. Please fix the errors and try again."
  exit 1
fi

# Create a zip file of the build directory
echo "🗜️  Creating zip file of the website..."
cd dist
zip -r ../rehabrate-site.zip ./*
cd ..

echo "✅ Build and packaging successful!"
echo
echo "📤 Your website is ready for upload!"
echo
echo "The file rehabrate-site.zip contains all the necessary files for your website."
echo "Upload this file to your server and extract it in your web root directory."
echo
echo "For detailed instructions, please refer to the UPLOAD_GUIDE.md file."
echo

# Check if the user wants to open the upload guide
read -p "Would you like to open the upload guide? (y/n): " open_guide
if [[ $open_guide == "y" || $open_guide == "Y" ]]; then
  # Try different ways to open the file depending on OS
  if command -v open &> /dev/null; then
    open UPLOAD_GUIDE.md  # macOS
  elif command -v xdg-open &> /dev/null; then
    xdg-open UPLOAD_GUIDE.md  # Linux
  elif command -v start &> /dev/null; then
    start UPLOAD_GUIDE.md  # Windows
  else
    echo "Could not automatically open the guide. Please open UPLOAD_GUIDE.md manually."
  fi
fi

echo "Thank you for using RehabRate! 🎉"
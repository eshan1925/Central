# Get Tailwind CSS
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest

# Build Tailwind Production CSS
NODE_ENV=production npx tailwindcss -i main.css -o tailwind.css --minify
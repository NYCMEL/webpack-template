cd /Melify/mtk/dev/tk/lib/components/misc/webpack-template

rm -rf node_modules
rm -rf build
rm -rf package-lock.json

npm install

npm run build

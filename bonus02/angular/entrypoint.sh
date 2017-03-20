if [ ! -d "node_modules" ]; then
    npm i
fi
if [ ! -d "typings" ]; then
    typings install
fi
ng build -dev -op /var/www/html -w
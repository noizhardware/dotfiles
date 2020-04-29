sudo npm install -g pm2 &&
sudo apt update &&
sudo apt install nginx &&

# helloworld.js app

# const http = require('http');
# const PORT = 3000;
# const server = http.createServer((req, res) => {
#   res.statusCode = 200;
#   res.setHeader('Content-Type', 'text/plain');
#   res.end('Hello, World!\n');
# });
# server.listen(PORT, () => {
#   console.log(`Server running on port ${PORT}.`);
# });




# const http = require('http');
# const fs = require('fs');
# 
# const PORT = 3000;
# 
# fs.readFile('./site/index.html', (err, data) => {
#     if (err) {
#         throw err;}
#     const myhtml = data;
#     renderSite(myhtml);});
# 
# const renderSite = (myhtml) => {
#         const server = http.createServer((req, res) => { // request & response
#                 res.write(myhtml);});
#         server.listen(PORT, () => {
#                 console.log(`Server running on port ${PORT}.`);});}
                
                
                

pm2 start helloworld.js &&
# pm2 stop appname.js # to stop it
# pm2 delete appname.js # to delete it from the list
# pm2 restart app_name
# pm2 reload app_name
# Instead of app_name you can pass:
# all to act on all processes
# id to act on a specific process id

sudo nano /etc/nginx/sites-available/default

#use this for now:

# server {
#         listen 80 default_server;
#         listen [::]:80 default_server;
#         server_name _;
#         location / {
#                 # First attempt to serve request as file, then
#                 # as directory, then fall back to displaying a 404.
#                 #try_files $uri $uri/ =404;
#                 proxy_pass http://localhost:3000;
#                 proxy_http_version 1.1;
#                 proxy_set_header Upgrade $http_upgrade;
#                 proxy_set_header Connection 'upgrade';
#                 proxy_set_header Host $host;
#                 proxy_cache_bypass $http_upgrade;
#         }
# }

sudo nginx -t # to verify
sudo systemctl restart nginx



echo "now you need to open port 80 on your router!\n"
echo "so the site is accessible form the outer world\n"
echo "and port 3000 to access from localhost\n"

#https://dev.to/bogdaaamn/run-your-nodejs-application-on-a-headless-raspberry-pi-4jnn

################## serve files on http:::
# sudo npm install http-server -g
# sudo npm install forever -g
# sudo nano /etc/nginx/sites-available/default
# dento la funzione server{ aggiungi: 
# location /ciccio {
#    proxy_pass  http://127.0.0.1:8080;}
# reset nginx
# poi crea una cartella per tutti i file, tipo file/
# metti i file nella sottocartella files/ciccio/
# da file/ fai partire http-server --log-ip
# ora sarà visibile da fuori del localhost!


# old
# 
# sudo apt install ufw &&
# sudo ufw enable &&
# sudo ufw allow ssh &&
# sudo ufw allow 3000 &&

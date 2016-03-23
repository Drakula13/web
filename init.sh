sudo ln -fs /home/box/web/etc/nginx.conf 
sudo nginx -t && sudo /etc/init.d/nginx restart
sudo ln -fs /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart gunicorn -b 0.0.0.0:8080 hello
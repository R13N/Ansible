server {
    listen 80;
    server_name ebooks.rxn.be;
    access_log /var/log/nginx/ebooks-access.log main;
    root /srv/http/ebooks;

    sendfile on;
    

    location / {
        autoindex on;
        autoindex_exact_size off;
        disable_symlinks off;
    }
}
server {
	listen 80;
	# listen [::]:80;

        server_name api.shivaniarvk.com www.api.shivaniarvk.com;

	location / {
		proxy_pass http://127.0.0.1:7888;
	}
}

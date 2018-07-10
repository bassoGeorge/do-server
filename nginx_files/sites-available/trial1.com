server {
	listen 80;
	listen [::]:80;
	root /home/basso/host/trial1;
	index index.html index.htm index.nginx-debian.html;

        server_name www.trial1.com trial1.com;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}

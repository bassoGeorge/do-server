server {
	listen 80;
	listen [::]:80;
	root /home/basso/host/shivani-portfolio-frontend/dist;
	index index.html index.htm index.nginx-debian.html;

        server_name shivaniarvk.com www.shivaniarvk.com;

	location / {
		try_files $uri $uri/ /;
	}
}

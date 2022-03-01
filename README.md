# 📌 ft_server 📌

The goal of this subject was to discover Docker and setup a web server with simple services (Wordpress, Phpmyadmin, MySQL)

## 🔑 How to

Install docker on your system then run the following commands :

```
docker build -t ft_server .
docker run -p 80:80 -p 443:443 -it ft_server --name ft_server
```

⚠️ Subject given slightly differs from actual project.<br>
⚠️ Project realized for learning purposes, it may contain bad practices, do not use for professional purposes.
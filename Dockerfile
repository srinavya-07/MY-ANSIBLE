FROM nginx
LABEL maintainer="navyakattoju.77@gmail.com"
RUN apt-get update
WORKDIR /usr/share/navya
COPY ./index.html /usr/share/nginx/html
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.tar.gz navya
EXPOSE 80

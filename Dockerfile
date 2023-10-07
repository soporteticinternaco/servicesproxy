FROM nginx:1.17
RUN echo "Updating servicesproxy config..."
COPY servicesproxy.conf /etc/nginx/conf.d/
COPY ws02.internaco.com_key.txt /etc/ssl/
COPY ws02.internaco.com.ca-bundle /etc/ssl/

#RUN apk add --no-cache tzdata
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

FROM nginx:1.17
RUN echo "Updating servicesproxy config..."
COPY servicesproxy.conf /etc/nginx/conf.d/


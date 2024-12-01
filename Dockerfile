FROM 192.168.56.108/library/golang:1.11
RUN echo "admin:Harbor12345" | docker login 192.168.56.108 -u admin --password-stdin
EXPOSE 80
COPY ./bin/hello-server /usr/local/bin/
CMD ["hello-server"]

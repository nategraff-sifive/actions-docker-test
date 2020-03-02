FROM ubuntu

COPY entrypoint.sh /entrypoint.sh

RUN dd if=/dev/urandom of=testrandom.txt bs=1048577 count=1024

ENTRYPOINT ["/entrypoint.sh"]

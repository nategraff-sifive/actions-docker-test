FROM ubuntu

COPY entrypoint.sh /entrypoint.sh

RUN dd if=/dev/urandom of=testrandom.txt bs=1048577 count=2048

ENTRYPOINT ["/entrypoint.sh"]

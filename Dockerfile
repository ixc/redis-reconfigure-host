FROM alpine:3

CMD echo 1 > /mnt/vm/overcommit_memory \
    && echo never > /mnt/transparent_hugepage/defrag \
    && echo never > /mnt/transparent_hugepage/enabled

# redis-configure-host

Docker image that reconfigures the host for Redis.

- Enables `overcommit_memory`. (https://redis.io/topics/faq#background-saving-fails-with-a-fork-error-under-linux-even-if-i-have-a-lot-of-free-ram)
- Disables Transparent Huge Pages (THP). (https://github.com/docker-library/redis/issues/55)


# Usage

Run one time manually:

    $ docker run --privileged --rm -v /proc/sys/vm:/mnt/vm -v /sys/kernel/mm/transparent_hugepage:/mnt/transparent_hugepage interaction/redis-configure-host

Or as a service in your `docker-compose.yml`:

    redis-configure-host:
      image: interaction/redis-configure-host
      privileged: true
      volumes:
        - /proc/sys/vm:/mnt/vm
        - /sys/kernel/mm/transparent_hugepage:/mnt/transparent_hugepage

FROM ipfs/go-ipfs:latest
MAINTAINER Wilson Zhong <1316628630@qq.com>

COPY start_ipfs.sh /usr/local/bin/start_ipfs
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/start_ipfs"]

# Execute the daemon subcommand by default
CMD ["daemon", "--migrate=true"]
# docker-wp-cli

Build image:
<code>docker build -t wp-cli:latest https://github.com/pawelkorus/docker-wp-cli.git</code>

Download and unpack wordpress:
<code>docker run --rm -e "LOCAL_USER_ID=1000" -v /root/.wordpress:/root-dir wp-cli core download</code>
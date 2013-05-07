#!/usr/bin/env bash

sudo apt-get install -y git-core ntp build-essential zlib1g-dev libpcre3 libpcre3-dev luajit luarocks libgoogle-perftools-dev libgeoip-dev checkinstall

nginx_dir=$(pwd)

cd nginx-1.3.16

./configure --add-module=${nginx_dir}/modules/ngx_devel_kit-0.2.18 --add-module=${nginx_dir}/modules/array-var-nginx-module-0.03rc1 --add-module=${nginx_dir}/modules/echo-nginx-module-0.45 --add-module=${nginx_dir}/modules/form-input-nginx-module --add-module=${nginx_dir}/modules/headers-more-nginx-module-0.19rc1 --add-module=${nginx_dir}/modules/iconv-nginx-module-0.10rc7 --add-module=${nginx_dir}/modules/beanstalkd-nginx-module --add-module=${nginx_dir}/modules/lua-nginx-module-0.7.21 --add-module=${nginx_dir}/modules/naxsi-core-0.50/naxsi_src --add-module=${nginx_dir}/modules/redis2-nginx-module-0.10 --add-module=${nginx_dir}/modules/nginx-accesskey-2.0.3 \
--with-http_spdy_module \
--with-http_geoip_module \
--with-google_perftools_module \
--with-http_gzip_static_module \
--with-http_dav_module \
--with-http_secure_link_module \


sudo make -j2
sudo make install

#!/bin/bash -x

mkdir -p /opt/dengonban/v4
mkdir -p /opt/cloudsqlproxy/

pushd $(dirname $0)
cp -R ./* /opt/dengonban/v4/
cp ./dengonban.service /etc/systemd/system/
cp ./cloudsqlproxy.service /etc/systemd/system/
popd

chmod 700 /opt/dengonban/v4/app.py
systemctl daemon-reload

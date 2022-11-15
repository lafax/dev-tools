#!/bin/bash

echo "-----------------------------------------------------------------------"
echo "║                         快速切换npm源小工具                         ║"
echo "-----------------------------------------------------------------------"

mirror=$1

if [ "$mirror" != 'npm' -a "$mirror" != 'taobao' ]; then
  echo "error: $mirror params error, must be [npm|taobao]" && exit 1
fi

echo "切换 $mirror 源"

if [[ $mirror == 'npm' ]];then
  npm config set registry https://registry.npmjs.org
elif [[ $mirror == 'taobao' ]]; then
  npm config set registry https://registry.npmmirror.com
fi

echo "npm registry: $(npm config get registry)"
#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

PATH_PREFIX=$HOME/webdev

#mkdir is not exist
mkdir -p $PATH_PREFIX/$1

TARGET_PATH=$HOME/webdev/$1
TEMPLATE_PATH=$HOME/fangyi-script/templates

echo "set up testing directory at: " $TARGET_PATH

#make npm shutup and get stuff done
cd $TARGET_PATH
npm init -f
npm install --save-dev babel-loader babel-core babel-preset-es2015 babel-preset-stage-0 babel-preset-react webpack
npm install --save react react-dom lodash

#TODO
#ensure_exist($HOME/templates/webpack.config.js)

echo "copy index.html webpack.config.js .babelrc from: " $TEMPLATE_PATH
cp $TEMPLATE_PATH/webpack.config.js $TEMPLATE_PATH/.babelrc $TEMPLATE_PATH/index.html $TEMPLATE_PATH/main.jsx $TARGET_PATH



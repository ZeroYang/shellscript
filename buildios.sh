#!/bin/sh
Base_Path=/Users/zwwx/work/projects/2016/xcode_projects
#开始xcode 工程build生成ipa
echo "-----------------start xcodebuild-----------------"
# #ios 打包脚本路径
# BUILD_IOS_PATH=${Base_Path}/Assets/buildios.sh

##确定导出路径 脚本路径  cer

#xcode 工程路径
XCODE_PROJ_PATH=${Base_Path}/$1

echo "xcode-project path= $XCODE_PROJ_PATH"

#$BUILD_IOS_PATH $XCODE_PROJ_PATH 
XCODE_BUILD_PATH=$XCODE_PROJ_PATH/build

#ipa_name 使用传人的 project name
ipa_name=$1

#clean#
xcodebuild clean

#编译xcode工程
cd $XCODE_PROJ_PATH
xcodebuild || exit
echo "-----------------end xcodebuild-----------------"

#打包#
echo "-----------------start export ipa-----------------"
#导出的ipa文件放在unity工程的根目录
xcrun -sdk iphoneos PackageApplication -v ${XCODE_BUILD_PATH}/Release-iphoneos/*.app -o ${Base_Path}/${ipa_name}.ipa
echo "-----------------end export ipa-----------------"

echo "-----------------success----------------"
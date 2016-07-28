#!/bin/sh

#参数判断
# if [ $# != 1 ];then
# 	echo "需要一个参数。参数是游戏包的名字"
# 	exit
# fi
# echo "参数为：$1"

UNITY_PATH=/Applications/Unity/Unity.app/Contents/MacOS/Unity

#PROJECT_PATH=/Users/zwwx/work/projects/2016/Res_SourceFile_4.7_iOS 
PROJECT_PATH=/Users/zwwx/work/projects/2016/TestUnity/Test_Auto/Untitled

cd $PROJECT_PATH

#svn update并输出日志
#svn up > update.out
#echo "工程更新完毕"

#打开资源工程并一键资源打包
$UNITY_PATH -projectPath $PROJECT_PATH -executeMethod ResTool.BuildRes_OneOperate
#!/bin/bash
echo "sdk plugin path: $1"
echo "add plugin-----------------------"
plugin_dir=$1

if [${#plugin_dir} < 1]
then
	echo "input sdk path"
fi

#update plugin
#svn update $plugin_dir
#当前目录
Cur_Dir=$(pwd)
echo "Cur_Dir : ${Cur_Dir}"
#拷贝 cp "资源位置" "目标位置"
cp -f "${plugin_dir}/info.plist" "${Cur_Dir}/info.plist"
echo "复制info.plist成功"
cp -f "${plugin_dir}/Classes/UnityAppController.mm" "${Cur_Dir}/Classes/UnityAppController.mm"
echo "复制UnityAppController.mm成功"
cp -f "${plugin_dir}/LaunchScreenImage-Landscape.png" "${Cur_Dir}/LaunchScreenImage-Landscape.png"
echo "复制LaunchScreenImage-Landscape.png成功"
cp -f "${plugin_dir}/LaunchScreenImage-Portrait.png" "${Cur_Dir}/LaunchScreenImage-Portrait.png"
echo "复制LaunchScreenImage-Portrait.png成功"
cp -f -r "${plugin_dir}/Unity-iPhone" "${Cur_Dir}"
echo "复制Unity-iPhone成功"
#cp -f -r "${plugin_dir}/SDK_Plugin" "${Cur_Dir}"
#echo "复制SDK_Plugin成功"

./SDK_Plugin/run.command
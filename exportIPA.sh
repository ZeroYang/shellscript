#!/bin/sh
#导出iOS IPA安装包

ARCHIVES_PATH=/Users/zwwx/Library/Developer/Xcode/Archives/2016-07-06/xg_ios_jinshanApple\ 16-7-6\ 下午1.43.xcarchive

DIS_EXPORT_PATH='/Users/zwwx/work/projects/jsws/xlj_dis_101_0704_1510'

DEV_EXPORT_PATH='/Users/zwwx/work/projects/jsws/xlj_dev_101_0704_1510'

DIS_PROFILE="Dis.jsws.20160608"

DEV_PROFILE="Dev.xuelingjue.20160627"

echo $ARCHIVES_PATH

xcodebuild -exportArchive -archivePath "$ARCHIVES_PATH" -exportPath $DIS_EXPORT_PATH -exportFormat ipa -exportProvisioningProfile $DIS_PROFILE


#xcodebuild -exportArchive -archivePath $ARCHIVES_PATH -exportPath $DEV_EXPORT_PATH -exportFormat ipa -exportProvisioningProfile $DEV_PROFILE

#xcodebuild -exportArchive -archivePath /Users/zwwx/Library/Developer/Xcode/Archives/2016-07-06/xg_ios_jinshanApple\ 16-7-6\ 下午1.43.xcarchive -exportPath /Users/zwwx/work/projects/jsws/xlj_dev_102_0706_1356 -exportFormat ipa -exportProvisioningProfile "Dev.xuelingjue.20160705"

#xcodebuild -exportArchive -archivePath /Users/zwwx/Library/Developer/Xcode/Archives/2016-07-06/xg_ios_jinshanApple\ 16-7-6\ 下午1.43.xcarchive -exportPath /Users/zwwx/work/projects/jsws/xlj_dis_102_0706_1356 -exportFormat ipa -exportProvisioningProfile "Dis.jsws.20160608"
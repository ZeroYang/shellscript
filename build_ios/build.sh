#!/bin/bash

source ./build_ios/build.cfg

echo "PROJECT_NAME=${PROJECT_NAME}"
echo "DEV_PROFILE_NAME=${DEV_PROFILE_NAME}"
echo "DIS_PROFILE_NAME=${DIS_PROFILE_NAME}"
echo "IPA_NAME=${IPA_NAME}"

pwd

# echo "-----------------xcodebuild clean-----------------"
# xcodebuild clean

DATE=$(date +%Y%m%d%H%M)

echo "-----------------xcodebuild archive-----------------"
xcodebuild archive 	-project ${PROJECT_NAME}.xcodeproj \
                   	-xcconfig ./build_ios/Release.xcconfig \
                   	-scheme ${SCHEME_NAME} \
                   	-destination generic/platform=iOS \
                   	-archivePath bin/${PROJECT_NAME}.xcarchive

# echo "-----------------xcodebuild export dev ipa-----------------"
# #export dev ipa
# xcodebuild -exportArchive -archivePath bin/${PROJECT_NAME}.xcarchive \
#                           -exportPath bin/Dev_${IPA_NAME}_${DATE} \
#                           -exportFormat ipa \
#                           -exportProvisioningProfile ${DEV_PROFILE_NAME}     

# echo "-----------------xcodebuild export dis ipa-----------------"
# #export dis ipa
# xcodebuild -exportArchive -archivePath bin/${PROJECT_NAME}.xcarchive \
#                           -exportPath bin/Dis_${IPA_NAME}_${DATE} \
#                           -exportFormat ipa \
#                           -exportProvisioningProfile ${DIS_PROFILE_NAME}    
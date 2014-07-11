logfile = stderror.log


xcodebuild -alltargets clean

rm -rf "./JenkinsBuild/*"

#xcodebuild -target Rating CONFIGURATION_BUILD_DIR=JenkinsBuild

xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO -configuration Debug -sdk iphonesimulator -project Rating/Rating.xcodeproj
#ios-sim launch build/debug -iphonesimulator/Rating.app --stderr $logfile --exit
#osascript -e "tell application \"iPhone Simulator\" to activate"
tail -f $logfile

#rm -rf "./JenkinsArchive/*"

#xcodebuild -scheme HelloJenkins archive PROVISIONING_PROFILE="00000000-0000-0000-0000-000000000000" CODE_SIGN_IDENTITY="iPhone Developer: Justin Hyland (XXXXXXXXXX)" -archivePath ./JenkinsArchive/HelloJenkins.xcarchive

#rm -rf "./JenkinsIPAExport/*"

#xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile iOS\ Team\ Provisioning\ Profile:\ com.yourAPP.HelloJenkins -archivePath ./JenkinsArchive/HelloJenkins.xcarchive -exportPath ./JenkinsIPAExport/HelloJenkins.ipa

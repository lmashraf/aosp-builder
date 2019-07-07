echo " Syncing sources ..."

git config --global user.name "Jenkins-Bot"
git config --global user.email "Jenkins-Bot@UHWorks.org"
git config --global color.ui auto

mkdir -p ~/aosp && cd ~/aosp

repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1
# repo sync
echo "repo sync"
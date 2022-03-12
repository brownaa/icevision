# Downloads requirements for pip install icevision[all]
mkdir repos

pip download -d repos/ pycocotools==2.0.2
pip download -d repos/ icevision[all]

# create tar.gz file
tar -czvf icevision-repos.tar.gz repos
ls -l icevision-repos.tar.gz

# remove folder
rm -rf repos
echo "repos directory removed"


echo "Download Kaggle install script"
wget https://raw.githubusercontent.com/brownaa/icevision/kaggle_install/icevision_kaggle_install.sh

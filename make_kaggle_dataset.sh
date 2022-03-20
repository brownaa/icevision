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

echo "~~ Downloading pretrained models ~~"

echo "Downloading ResNet-18"
# save to: /root/.cache/torch/hub/checkpoints/resnet18-f37072fd.pth
wget https://download.pytorch.org/models/resnet18-f37072fd.pth

echo "Downloading ResNet-34"
# save to: /root/.cache/torch/hub/checkpoints/resnet34-b627a593.pth
wget https://download.pytorch.org/models/resnet34-b627a593.pth

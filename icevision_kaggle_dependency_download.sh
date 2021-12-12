# Downloads all dependencies for Cuda 10, 11 and for CPUs
# Unlike the install script, this always uses the version on Pypi for IceVision
#@TODO: add link to example script to install from this data.

echo "############# Step 1 of 6 ###################################"
echo "Downloading icevision + dependencices for CUDA10"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cuda10/" torch==1.10.0+cu102 torchvision==0.11.1+cu102 -f https://download.pytorch.org/whl/torch_stable.html

echo "- Downloading mmcv"
pip download --dest "./pip/cuda10/" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html



echo "############# Step 2 of 6 ###################################"
echo "Downloading icevision + dependencices for CUDA11"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cuda11/" torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html

echo "- Downloading mmcv"
pip download --dest "./pip/cuda11/" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.10.0/index.html



echo "############# Step 3 of 6 ###################################"
echo "Downloading icevision + dependencices for cpu"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cpu/" torch=="1.10.0+cpu" torchvision=="0.11.1+cpu" -f https://download.pytorch.org/whl/torch_stable.html

echo "- Downloading mmcv"
pip download --dest "./pip/cpu/" mmcv-full=="1.3.17" -f https://download.openmmlab.com/mmcv/dist/cpu/torch1.10.0/index.html


echo "############# Step 4 of 6 ###################################"
echo "- Downloading mmdet"
pip download --dest "./pip/mmdet" mmdet==2.17.0


echo "############# Step 5 of 6 ###################################"
echo "- Downloading icevision from PyPi"
pip download --dest "./pip/icevision/" icevision[all]

echo "- Downloading icedata from PyPi"      
pip download --dest "./pip/icevision/" icedata

echo "- Downloading yolov5-icevision" 
pip download --dest "./pip/icevision/" yolov5-icevision


echo "############# Step 6 of 6 ###################################"
echo "- Downloading torchtext"
pip download --dest "/kaggle/working/pip" torchtext==0.11.0
 
echo "############# Done!       ###################################"
echo "icevision download finished!"  

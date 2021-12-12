# Downloads all dependencies for Cuda 10, 11 and for CPUs
# Unlike the install script, this always uses the version on Pypi for IceVision
#@TODO: add link to example script to install from this data.

echo "Downloading icevision + dependencices for CUDA10"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cuda10/" torch==1.10.0+cu102 torchvision==0.11.1+cu102 -f https://download.pytorch.org/whl/torch_stable.html --progress-bar no

echo "- Downloading mmcv"
pip download --dest "./pip/cuda10/" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html --progress-bar no



echo "Downloading icevision + dependencices for CUDA111"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cuda11/" torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html --progress-bar no

echo "- Downloading mmcv"
pip download --dest "./pip/cuda11/" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.10.0/index.html --progress-bar no



echo "Downloading icevision + dependencices for cpu"
echo "- Downloading torch and its dependencies"
pip download --dest "./pip/cpu/" torch=="1.10.0+cpu" torchvision=="0.11.1+cpu" -f https://download.pytorch.org/whl/torch_stable.html --progress-bar no

echo "- Downloading mmcv"
pip download --dest "./pip/cpu/" mmcv-full=="1.3.17" -f https://download.openmmlab.com/mmcv/dist/cpu/torch1.10.0/index.html --progress-bar no 


echo "- Downloading mmdet"
pip download --dest "./pip/" mmdet==2.17.0 --progress-bar no


echo "- Downloading icevision from PyPi"
pip download --dest "./pip/icevision/" icevision[all] --progress-bar no

echo "- Downloading icedata from PyPi"      
pip download --dest "./pip/icevision/" icedata --progress-bar no

echo "- Downloading yolov5-icevision" 
pip download --dest "./pip/icevision/" yolov5-icevision --progress-bar no


echo "- Downloading torchtext
pip download --dest "/kaggle/working/pip" torchtext==0.11.0 --progress-bar no
 

echo "icevision download finished!"  

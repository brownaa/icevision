# Downloads all dependencies for Cuda 10, 11 and for CPUs
# Unlike the install script, this always uses the version on Pypi for IceVision
#@TODO: add link to example script to install from this data.

target="${1}" 
case ${target} in 
   cuda10)  
      echo "############# Step 1 of 4 ###################################"
      echo "Downloading icevision + dependencices for CUDA10"
      echo "- Downloading torch and its dependencies"
      pip download --dest "." torch==1.10.0+cu102 torchvision==0.11.1+cu102 -f https://download.pytorch.org/whl/torch_stable.html

      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html
    ;;

   cuda11)  
      echo "############# Step 1 of 4 ###################################"
      echo "Downloading icevision + dependencices for CUDA11"
      echo ""
      echo "- Downloading torch and its dependencies"
      pip download --dest "." torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html

      echo ""
      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.10.0/index.html
    ;;

   cpu)
      echo "############# Step 1 of 4 ###################################"
      echo "Downloading icevision + dependencices for cpu"
      echo "- Downloading torch and its dependencies"
      pip download --dest "." torch=="1.10.0+cpu" torchvision=="0.11.1+cpu" -f https://download.pytorch.org/whl/torch_stable.html

      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full=="1.3.17" -f https://download.openmmlab.com/mmcv/dist/cpu/torch1.10.0/index.html
   ;;


echo "############# Step 2 of 4 ###################################"
echo "- Downloading mmdet"
pip download --dest "." mmdet==2.17.0

echo "############# Step 3 of 4 ###################################"
echo "- Downloading icevision from PyPi"
pip download --dest "." icevision[all]

echo "- Downloading icedata from PyPi"      
pip download --dest "." icedata

echo "- Downloading yolov5-icevision" 
pip download --dest "." yolov5-icevision

echo "############# Step 4 of 4 ###################################"
echo "- Downloading torchtext"
pip download --dest "." torchtext==0.11.0

echo "############# Done!       ###################################"
echo "icevision download finished!"  

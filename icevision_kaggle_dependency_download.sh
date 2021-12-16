# Downloads all dependencies for Cuda 10, 11 and for CPUs
# Unlike the install script, this always uses the version on Pypi for IceVision
#@TODO: add link to example script to install from this data.

#echo "############# Step 1 of 6 ###################################"
#echo "Downloading icevision + dependencices for CUDA10"
#echo "\n\n- Downloading torch and its dependencies"
#pip download --dest "./pip" torch==1.10.0+cu102 torchvision==0.11.1+cu102 -f https://download.pytorch.org/whl/torch_stable.html

#echo "\n\n- Downloading mmcv"
#pip download --dest "./pip" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html



echo "\n\n\n############# Step 2 of 6 ###################################"
echo "Downloading icevision + dependencices for CUDA11"
echo "\n\n- Downloading torch and its dependencies"
pip download --dest "./pip" torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html

echo "\n\n- Downloading mmcv"
pip download --dest "./pip" mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.10.0/index.html



#echo "\n\n\n############# Step 3 of 6 ###################################"
#echo "Downloading icevision + dependencices for cpu"
#echo "\n\n- Downloading torch and its dependencies"
#pip download --dest "./pip" torch=="1.10.0+cpu" torchvision=="0.11.1+cpu" -f https://download.pytorch.org/whl/torch_stable.html

#echo "\n\n- Downloading mmcv"
#pip download --dest "./pip" mmcv-full=="1.3.17" -f https://download.openmmlab.com/mmcv/dist/cpu/torch1.10.0/index.html


echo "\n\n\n############# Step 4 of 6 ###################################"
echo "\n\n- Downloading mmdet"
pip download --dest "./pip" mmdet==2.17.0


echo "\n\n\n############# Step 5 of 6 ###################################"
echo "\n\n- Downloading icevision from PyPi"
pip download --dest "./pip" icevision[all]

echo "\n\n- Downloading icedata from PyPi"      
pip download --dest "./pip" icedata

echo "\n\n- Downloading yolov5-icevision" 
pip download --dest "./pip" yolov5-icevision


echo "\n\n\n############# Step 6 of 6 ###################################"
echo "\n\n- Downloading torchtext"
pip download --dest "./pip" torchtext==0.11.0
 
echo "\n\n\n############# Done!       ###################################"
echo "icevision download finished!"  

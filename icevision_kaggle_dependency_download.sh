# Downloads all dependencies for Cuda 10, 11 and for CPUs
# Unlike the install script, this always uses the version on Pypi for IceVision
#@TODO: add link to example script to install from this data.

target="${1}" 
case ${target} in 
   cuda10)  
      echo "############# Step 1 of 4 ###################################"
      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.9.0/index.html
    ;;

   cuda11)  
      echo "############# Step 1 of 4 ###################################"
      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9.0/index.html
    ;;

   cpu)
      echo "############# Step 1 of 4 ###################################"
      echo "- Downloading mmcv"
      pip download --dest "." mmcv-full=="1.3.17" -f https://download.openmmlab.com/mmcv/dist/cpu/torch1.9.0/index.html
   ;;
   
   *)  
      echo "Coud not install icevision. Check out which torch and torchvision versions are compatible with your CUDA version" 
      exit -1 # Command to come out of the program with status -1
      ;; 
esac

echo "############# Step 2 of 4 ###################################"
echo "- Downloading mmdet"
pip download --dest "." mmdet==2.17.0

echo "############# Step 3 of 4 ###################################"
echo "- Downloading icevision from PyPi"
pip download --dest "." icevision
pip download --dest "." pycocotools<3
pip download --dest "." loguru>=0.5.3
pip download --dest "." pytorch-lightning>1.4.5
pip download --dest "." effdet<0.3
pip download --dest "." omegaconf<3
#pip download --dest "." dataclasses==0.6
pip download --dest "." resnest<0.0.7


echo "- Downloading icedata from PyPi"      
# pip download --dest "." icedata

echo "- Downloading yolov5-icevision" 
# pip download --dest "." yolov5-icevision

echo "############# Step 4 of 4 ###################################"
echo "- Downloading torchtext"
# pip download --dest "." torchtext==0.11.0

echo "############# Done!       ###################################"
echo "icevision download finished!"  

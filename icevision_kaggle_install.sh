# Pick your installation target: cuda11 or cuda10 or cpu
# Pick icevision version: if empty, the PyPi release version will be chosen. If you pass `master`, the GitHub master version will be chosen

# Examples
## Install cuda11  and icevsision master version
# !bash icevision_install.sh cuda11 master  

## Install cpu and icevsision PyPi version
# !bash icevision_install.sh cpu 

target="${1}" 
case ${target} in 
   cuda10)  
      echo "Installing icevision + dependencices for ${1}"
      echo "- Installing torch and its dependencies"
      pip install torch==1.10.0+cu102 torchvision==0.11.1+cu102 -f "../input/icevision/pip/cuda10" --upgrade -q --no-index

      echo "- Installing mmcv"
      pip install mmcv-full==1.3.17 -f "../input/icevision/pip/cuda10" --upgrade -q --no-index
      ;; 

   cuda11)  
      echo "Installing icevision + dependencices for ${1}"
      echo "- Installing torch and its dependencies"
      pip install torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f "../input/icevision/pip/cuda11" --upgrade  -q --no-index

      echo "- Installing mmcv"
      pip install mmcv-full==1.3.17 -f "../input/icevision/pip/cuda11" --upgrade -q --no-index
    ;;  
    
   cpu)  
      echo "Installing icevision + dependencices for ${1}"
      echo "- Installing torch and its dependencies"
      pip install torch=="1.10.0+cpu" torchvision=="0.11.1+cpu" -f "../input/icevision/pip/cpu"  --upgrade -q --no-index

      echo "- Installing mmcv"
      pip install mmcv-full=="1.3.17" -f "../input/icevision/pip/cpu" --upgrade -q --no-index
    ;;

   *)  
      echo "Coud not install icevision. Check out which torch and torchvision versions are compatible with your CUDA version" 
      exit -1 # Command to come out of the program with status -1
      ;; 
esac


echo "- Installing mmdet"
pip install mmdet==2.17.0 -f "../input/icevision/pip" --upgrade -q --no-index

icevision_version="${2}"

case ${icevision_version} in 
   master) 
      echo "- Installing icevision from master"
      pip install git+git://github.com/airctic/icevision.git\#egg=icevision[all] --upgrade -q --no-index

      echo "- Installing icedata from master"      
      pip install git+git://github.com/airctic/icedata.git --upgrade -q --no-index

      echo "- Installing yolov5-icevision" 
      pip install git+git://github.com/airctic/yolov5-icevision.git  --upgrade -q --no-index
      ;;

   *) 
      echo "- Installing icevision from PyPi"
      pip install icevision[all] -f "../input/icevision/pip" --upgrade -q --no-index

      echo "- Installing icedata from PyPi"      
      pip install icedata -f "../input/icevision/pip" --upgrade -q --no-index

      echo "- Installing yolov5-icevision" 
      pip install yolov5-icevision -f "../input/icevision/pip" --upgrade -q --no-index
      ;;
  esac 
  
  echo "- Installing torchtext"
  pip install torchtext==0.11.0 -f "../input/icevision/pip" --upgrade -q --no-index

echo "icevision installation finished!"  

echo "~~ Installing IceVision requirements from source ~~"
echo ""

echo "Installing antlr"
cp -r ../input/icevision-essentials/icevision-repos/repos/antlr4-python3-runtime-4.8/antlr4-python3-runtime-4.8 /kaggle/working
pip install ./antlr4-python3-runtime-4.8 -q
rm -r ./antlr4-python3-runtime-4.8

echo "Installing fire"
pip install ../input/icevision-essentials/icevision-repos/repos/fire-0.4.0/fire-0.4.0.tar -q

echo "Installing fvcore"
echo " - requires iopath"
pip install ../input/icevision-essentials/icevision-repos/repos/iopath-0.1.9-py3-none-any.whl -q
cp -r ../input/icevision-essentials/icevision-repos/repos/fvcore-0.1.5.post20220305/fvcore-0.1.5.post20220305 /kaggle/working
pip install ./fvcore-0.1.5.post20220305 -q
rm -r ./fvcore-0.1.5.post20220305

!pip install --no-index ../input/icevision-essentials/icevision-repos/repos/pycocotools-2.0.2/dist/pycocotools-2.0.2.tar -q

# requires pycocotools, 
!pip install --no-index icevision[all] -f ../input/icevision-essentials/icevision-repos/repos -q

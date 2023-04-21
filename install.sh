@echo off
mv adjustmentFile_AODV.patch ..
cd ..
patch -p0 -i adjustmentFile_AODV.patch
rm adjustmentFile.patch
mv ./AODV/routing/* ./src/node/communication/routing/
mv ./AODV/Simulations/* ./Simulations
./makemake
make
rm -r ./AODV
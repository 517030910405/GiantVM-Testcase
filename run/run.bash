rm mnist_cnn*
rm mytime.txt
python readtime.py > mytime.txt
bash run0.bash&
bash run1.bash&
bash run2.bash&
bash run3.bash

python ensemble.py --nameFrom=0 --nameTo=4

python readtime2.py
python readtime2.py>> resultTime.txt
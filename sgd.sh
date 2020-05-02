
nohup python -u main.py -a mobilenet_v2 --lr 0.05 -b 96 --optim sgd ./ImageNet >> sgd.out &
tail -f ./sgd.out
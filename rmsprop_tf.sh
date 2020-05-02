
nohup python -u main.py -a mobilenet_v2 --lr 0.05 -b 96 --optim rmsprop_tf ./ImageNet >> rmsprop_tf.out &
tail -f ./rmsprop_tf.out
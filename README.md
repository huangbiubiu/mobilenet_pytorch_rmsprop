# Reproduce the MobileNet v2 with RMSprop in PyTorch

The [official implementation (TensorFlow)](https://github.com/tensorflow/models/tree/master/research/slim/nets/mobilenet) of [MobileNet v2](https://arxiv.org/abs/1801.04381) use RMSprop as the optimizer. However, I failed to reproduce the result with RMSprop in PyTorch. The loss seems **not decrease at all** with RMSprop.

Any suggestions are welcomed!

## Implementation details

The [training code](https://github.com/huangbiubiu/mobilenet_pytorch_rmsprop/blob/master/main.py) is based on https://github.com/pytorch/examples/tree/master/imagenet with minimum modification (use different optimizers).

## Experiments and logs

I conduct three experiments with different optimizers:

- SGD (./sgd.sh)
- RMSprop (./rmsprop.sh)
- RMSprop closer to TensorFlow (./rmsprop_tf.sh), thanks to @vincentqb's advice [here](https://github.com/pytorch/pytorch/issues/32545#issuecomment-617995449).

The training logs are uploaded to [Google Drive](https://drive.google.com/drive/folders/1jzBKqX82g1Gw5-i1syvVIvd8iEeBi-9P?usp=sharing).

### Further experiments

I also tried smaller learning rate and larger batch size on RMSprop, but it still doesn't work.

## Related discussion

- https://github.com/marvis/pytorch-mobilenet reports the RMSprop result on MobileNet v1 (does not work at all).


set -ex
python train.py --dataroot ./datasets/nightVision --name nightVision_cyclegan --model cycle_gan --pool_size 50 --no_dropout

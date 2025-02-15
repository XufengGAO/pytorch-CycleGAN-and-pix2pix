#!/bin/bash

#SBATCH --cpus-per-task=20
#SBATCH --job-name=test_cycle
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --partition=gpu
#SBATCH --gpus-per-node=2
#SBATCH --qos=gpu_free
#SBATCH --mem=10GB
#SBATCH --time=12:00:00
#SBATCH --chdir /scratch/izar/xugao/trainLogs
#SBATCH --output=/scratch/izar/xugao/trainLogs/testcycle_%j.out
#SBATCH --error=/scratch/izar/xugao/trainLogs/testcycle_%j.err

module load gcc cuda
echo "hello from 'hostname'"
source /home/xugao/venvs/venv-for-demo/bin/activate
cd /home/xugao/gitRepo/pytorch-CycleGAN-and-pix2pix
python test.py \
--dataroot /home/xugao/gitRepo/swapping-autoencoder-pytorch/datasets/nightVisionDatasets/ \
--name cyclegan \
--model cycle_gan \
--phase test \
--no_dropout \
--dataset_mode 
echo "bye from 'hostname'"
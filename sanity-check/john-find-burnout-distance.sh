#!/bin/bash

#SBATCH --gres=gpu:1
#SBATCH --mem=8G  
#SBATCH -c 4
#SBATCH -p t4v2  
#SBATCH --qos=normal
#SBATCH --output=compute_distance_%j.out
#SBATCH --open-mode=append

#SBATCH --dependency=afterburstbuffer:1488214

. ~/.bash_profile
module use /pkgs/environment-modules/
conda activate anesthes

echo "starting"
pwd
# python -u find_burnout_distance.py --day $1
python -u demo_env_test.py

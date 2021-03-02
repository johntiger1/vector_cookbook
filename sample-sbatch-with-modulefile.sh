#SBATCH -N 1
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH -p nlp
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=pytorch
#SBATCH --output=pytorch_job_%j.out

. /etc/profile.d/lmod.sh
module use /pkgs/environment-modules/
module load pytorch-36
(while true; do nvidia-smi; top -b -n 1 | head -20; sleep 10; done) &
python /h/<<usermame>>/pytorch.py
wait

# credits to: https://support.vectorinstitute.ai/FAQ%20about%20the%20cluster

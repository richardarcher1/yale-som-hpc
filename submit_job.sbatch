#!/bin/bash -l

#SBATCH --job-name=ExampleClusterRun
#SBATCH --partition=gpu
#SBATCH --mem=96GB
#SBATCH --cpus-per-task=6
#SBATCH --output=output/first_job.txt
#SBATCH --gres=gpu:3
#SBATCH --gres-flags=enforce-binding
#SBATCH --time=2-00:00:00

# Get conda
# echo "try to load miniconda"
# module load miniconda
echo "try to load anaconda"
module load anaconda/3-2021.05


# we already created the environment
# echo "try to create conda environment to activate later"
# conda env create -f envs/environment.yml


echo "trying to activate conda without #"
conda activate my_first_environment


# see if the env was created successfully
python run.py

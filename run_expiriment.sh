#!/bin/bash -l

#SBATCH --job-name=ExampleClusterRun
#SBATCH --partition=gpu
#SBATCH --mem=96GB
#SBATCH --cpus-per-task=6
#SBATCH --mail-user=richard.archer@yale.edu
# Alex did not have these next 2 lines, I added them
#SBATCH --mail-type=END
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=ALL
#SBATCH --output=exp5_output.txt
#SBATCH --gres=gpu:3
#SBATCH --gres-flags=enforce-binding
#SBATCH --time=2-00:00:00

# Get conda
echo "try to load miniconda"
#module load miniconda
echo "try to load anaconda"
#module load anaconda3-2020.07-gcc-9.3.0-myrjwlf


# in Alex's, the conda env has already been created 
# let's try to create on here
# echo "try to create conda environment to activtae later"
# #conda env create -f environment.yml


#eval "$(conda shell.bash hook)"

echo "SLURM_JOBID="$SLURM_JOBID
echo " "
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo " "
echo $PATH
echo " "
echo $PATH | grep aesthetics
echo " "
echo $(conda info --envs)

# above is Alex's, this is my attempt 
echo $(conda env list)
# neither call works!! #conda is valid but conda seems to not be valid 

# conda activate aesthetics

echo "trying to activate conda without #"
conda activate dpo1

echo "trying to activate conda with # (ie through sbatch)"
#conda activate dpo1

# see if the env was created successfully
python run.py
# try python3 too
# python experiment.py

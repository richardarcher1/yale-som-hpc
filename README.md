# yale-som-hpc

This is meant to help someone get up and running on the SOM cluster. It aims to be an end to end workflow:

- creating conda environments
- running python (or R) scripts
- managing outputs, logs, etc.


# general workflow
- load anaconda: current best is "module load anaconda/3-2021.05". To see options, run "module avail" or even better "module avail anaconda"
- create environment (only need to do once) (conda create environment line in submit_job.sbatch, afterwards comment that out)
- activate environment: "conda activate environment_name"
- submit python job: "python run.py"

This should all happen within an .sbatch script, which can be submitted with "sbatch submit_job.sbatch". 

The outputs of that job will show up in the output/ directory. You can see them with "cat output/first_job.txt"


# GETTING STARTED WORKFLOW
- run the following commands. 
"sbatch create_conda_env.sbatch"
- look in the output/ directory (by running "ls output") to see if everything worked
- run "sbatch submit_job.sbatch", which will run run.py
- then, modify run.py however you like, and resubmit it with sbatch submit_job.sbatch


## Tips
- can run "scontrol show nodes" to see what nodes are available
- even if sbatch scrips end in .sh, you want to run them as sbatch script.sh NOT bash script.sh

- can run squeue --me to see what your jobs are
- sacct -j [job id] to check a jobb status

- Helps to be familiar with bash commands, esp mkdir, rmdir, rm, rm -rf, cp, mv, etc.
- I recommend nano as a text editor for this, it is incredibly helpful (remember, ^ means ctrl when looking at the bottom)


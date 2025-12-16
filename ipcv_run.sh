#!/bin/bash
#SBATCH --job-name=part2a_l40s
#SBATCH --mail-type=ALL
#SBATCH --mail-user=matteo.preda2@studio.unibo.it
#SBATCH --time=08:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=15G
#SBATCH --partition=l40
#SBATCH --output=stdout_job.log
#SBATCH --chdir=/scratch.hpc/matteo.preda
#SBATCH --gres=gpu:1

# Set Jupyter and IPython directories to avoid home directory quota issues
export JUPYTER_CONFIG_DIR=/scratch.hpc/matteo.preda/.jupyter
export IPYTHONDIR=/scratch.hpc/matteo.preda/.ipython

# Activate virtual environment
source /scratch.hpc/matteo.preda/venv/bin/activate


# Run and overwrite the notebook with updated outputs
jupyter nbconvert --to notebook --execute /home/students/matteo.preda2/ipcv/assignment_module_two_preda_efficientNet.ipynb --output assignment_module_two_preda_efficientNet.ipynb --inplace


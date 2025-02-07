#!/bin/bash
#SBATCH -J sm
#SBATCH -o out
#SBATCH -e err
#SBATCH -p RM-shared
#SBATCH -n 1
#SBATCH -t 08:00:00


CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda activate snparcher
umask u=rwx,g=rwx,o=rx
snakemake --snakefile workflow/Snakefile --profile ./profiles/slurm


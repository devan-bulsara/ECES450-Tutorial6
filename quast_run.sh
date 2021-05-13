#!/bin/bash
#
### !!! CHANGE !!! the email address to your drexel email
#SBATCH --mail-user=db3265@drexel.edu
### !!! CHANGE !!! the account - you need to consult with the professor
#SBATCH --account=eces450650Prj
### select number of nodes (usually you need only 1 node)
#SBATCH --nodes=1
### select number of tasks per node
#SBATCH --ntasks=1
### select number of cpus per task (you need to tweak this when you run a multi-thread program)
#SBATCH --cpus-per-task=24
### request 48 hours of wall clock time (if you request less time, you can wait for less time to get your job run by th$
#SBATCH --time=48:00:00
### memory size required per node (this is important, you also need to estimate a upper bound)
#SBATCH --mem=186GB
### select the partition "def" (this is the default partition but you can change according to your application)
#SBATCH --partition=def

module load shared
module load python/gcc
python3 ./quast/quast.py \
			./Output2/contigs.fasta \
			-o ./QuastResults \
			-t $SLURM_CPUS_PER_TASK



#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --output=/project/6025683/stanlo/ml_for_opvs/ml_for_opvs/ML_models/sklearn/SVM/OPV_Min/slurm_batch_shuffled.out
#SBATCH --error=/project/6025683/stanlo/ml_for_opvs/ml_for_opvs/ML_models/sklearn/SVM/OPV_Min/slurm_batch_shuffled.err
#SBATCH --account=def-aspuru
#SBATCH --nodes=2
#SBATCH --cpus-per-task=48
#SBATCH --mem=24G
module load python
source /project/6025683/stanlo/opv_project/bin/activate
python opv_SVM_batch.py
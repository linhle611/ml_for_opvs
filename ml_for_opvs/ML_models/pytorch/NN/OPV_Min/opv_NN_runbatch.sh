#!/bin/bash
#SBATCH --time=04:00:00
#SBATCH --output=/project/6025683/stanlo/ml_for_opvs/ml_for_opvs/ML_models/pytorch/NN/slurm_batch.out
#SBATCH --error=/project/6025683/stanlo/ml_for_opvs/ml_for_opvs/ML_models/pytorch/NN/slurm_batch.err
#SBATCH --account=def-aspuru
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
#SBATCH --mem=12G
module load python
source /project/6025683/stanlo/opv_project/bin/activate
python opv_NN_batch.py --n_hidden 256 --n_embedding 256 --drop_prob 0.3 --learning_rate 1e-3 --train_batch_size 128
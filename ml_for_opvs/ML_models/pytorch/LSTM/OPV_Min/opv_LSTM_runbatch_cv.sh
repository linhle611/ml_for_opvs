#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --output=/project/6033559/stanlo/ml_for_opvs/ml_for_opvs/ML_models/pytorch/LSTM/OPV_Min/slurm_batch_cv.out
#SBATCH --error=/project/6033559/stanlo/ml_for_opvs/ml_for_opvs/ML_models/pytorch/LSTM/OPV_Min/slurm_batch_cv.err
#SBATCH --account=rrg-aspuru
#SBATCH --nodes=1
#SBATCH --gres=gpu:4
#SBATCH --mem=24G
module load python
source /project/6025683/stanlo/opv_project/bin/activate
python opv_LSTM_batch_cv.py --n_hidden 256 --n_embedding 256 --drop_prob 0.3 --learning_rate 1e-2 --train_batch_size 256
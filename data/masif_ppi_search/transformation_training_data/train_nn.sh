masif_root=$(git rev-parse --show-toplevel)
masif_source=$masif_root/source/
masif_matlab=$masif_root/source/matlab_libs/
masif_data=$masif_root/data/
export PYTHONPATH=$PYTHONPATH:$masif_source:$masif_data/masif_ppi_search/:$masif_data/masif_ppi_search/transformation_training_data/
module purge
slmodules -r deprecated
module load gcc cuda cudnn mvapich2 openblas
source /home/gainza/lpdi_fs/masif/tensorflow-1.12/bin/activate
masif_root=$(git rev-parse --show-toplevel)
python $masif_source/masif_ppi_search/transformation_training_data/train_evaluation_network.py

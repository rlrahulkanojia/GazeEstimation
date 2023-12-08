git clone https://github.com/hysts/pytorch_mpiigaze.git
cd pytorch_mpiigaze/
./scripts/download_mpiigaze_dataset.sh
python tools/preprocess_mpiigaze.py --dataset datasets/MPIIGaze -o datasets/

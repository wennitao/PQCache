conda deactivate
conda env create -f env.yml
conda activate pqcache
#conda install pytorch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 pytorch-cuda=12.1 -c pytorch -c nvidia
pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu121
pip install ninja packaging wheel
pip install flash-attn==2.5.8 --no-build-isolation
python -c "import flash_attn; print(flash_attn.__version__)"
pip install matplotlib
bash -c "export PYTHON="/usr/local/anaconda3-2024.06/bin/python3""
bash -c "export BENDER="bender-0.27.1""
bash -c "export CC="gcc-9.2.0""
bash -c "export CXX="g++-9.2.0""
#bash -c "export LLVM_BINROOT="/usr/pack/riscv-1.0-kgf/pulp-llvm-0.12.0/bin""
export LLVM_BINROOT="/usr/pack/riscv-1.0-kgf/pulp-llvm-0.12.0/bin"
# As a temporary workaround (until correct tool versions are installed system-wide):
#bash -c "export PATH=/usr/scratch/kneiff/paulsc/opt/verible.old/bin:$PATH"
bash -c "export PATH=/home/colluca/snitch/bin:$PATH"
export PATH=/usr/scratch/kneiff/paulsc/opt/verible.old/bin:$PATH
#bash -c "export PATH=/usr/scratch/dachstein/colluca/opt/verible/bin:$PATH"
export PATH=/usr/pack/riscv-1.0-kgf/riscv64-gcc-11.2.0/bin:$PATH
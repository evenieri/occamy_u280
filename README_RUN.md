# Launching Vivado for the U280 Project

## Environment Setup

This setup is required **every time you open a new terminal window**. It primarily configures global environment variables. For instance, on the **Lagrev server**, follow these steps:

* Create a file named `env_setup.sh` in the main project directory.
* Add the following commands to the file:

```bash
bash -c "export PYTHON='/usr/local/anaconda3-2024.06/bin/python3'"
bash -c "export BENDER='bender-0.27.1'"
bash -c "export CC='gcc-9.2.0'"
bash -c "export CXX='g++-9.2.0'"
export LLVM_BINROOT="/usr/pack/riscv-1.0-kgf/pulp-llvm-0.12.0/bin"
export PATH=/usr/scratch/kneiff/paulsc/opt/verible.old/bin:$PATH
export PATH=/usr/pack/riscv-1.0-kgf/riscv64-gcc-11.2.0/bin:$PATH
```

* Copy the `.venvs` directory into the main project folder.
* Open a terminal and run the following:

```bash
bash
source env_setup.sh
source .venvs/snitch_cluster/bin/activate
```

Before proceeding, clone the GitHub repository and switch to the `ck/fpga2` branch:

```bash
git clone https://github.com/pulp-platform/occamy
cd occamy
git checkout ck/fpga2
```

Since Occamy is too large for the U280 FPGA, reduce the number of clusters to **one** using:

```bash
make -C ../sim CFG_OVERRIDE=cfg/single-cluster.hjson rtl
```

Next, initialize and update all Git submodules:

```bash
git submodule update --init --recursive
```

---
## Opening the project of U280
If you wish to open the `occamy_u280` project in Vivado **without re-running the full implementation**, you can do so by launching Vivado manually:

```bash
vitis-2022.1 vivado
```

> Important: Before opening the Block Diagram in Vivado, run the following TCL command to avoid crashes related to the GUI address map:

```tcl
set_param gui.addressMap 0
```

## Running the Complete Implementation

To launch the full implementation process, navigate to the directory `../occamy/target/fpga` and execute the following commands:

```bash
make clean
make occamy_u280 [DEBUG=0] [EXT_JTAG=0] [NPROC=16]
```

Once the build completes, all relevant output files will be located in:
`../occamy/target/fpga/occamy_u280`


Now you can open it by:
```bash
vitis-2022.1 vivado
```

> Important: Before opening the Block Diagram in Vivado, run the following TCL command to avoid crashes related to the GUI address map:

```tcl
set_param gui.addressMap 0
```

Well done!

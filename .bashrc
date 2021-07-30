# These are just a reminder to add to .bashrc
# actual paths may differ

# Nvidia-cuda 
export PATH="/usr/local/cuda-10.1/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH"

# Tensorrt
export PATH="/opt/TensorRT-5.1.2.2/bin:$PATH"
export LD_LIBRARY_PATH="/opt/TensorRT-5.1.2.2/lib:$LD_LIBRARY_PATH"

# Qt setup
export PATH="$PATH:/opt/Qt/5.12.3/gcc_64/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/Qt/5.12.3/gcc_64/lib"
export QT5_DIR="/opt/Qt/5.12.3/gcc_64"

# Golang
export PATH=$PATH:/home/prun/tools/go/bin

# VeloView executable
export PATH=$PATH:/opt/VeloView-3.5.0-Linux-64bit/bin

# default libmxnetserver
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/prun/tools/libmxnetserver"
# disable long startup autotune procedure for mxnet inference
export MXNET_CUDNN_AUTOTUNE_DEFAULT=0

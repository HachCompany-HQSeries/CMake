include(Compiler/NVIDIA)
__compiler_nvidia_cxx_standards(CUDA)
__compiler_nvidia_cuda_flags(CUDA)

set(CMAKE_CUDA_COMPILER_HAS_DEVICE_LINK_PHASE True)

set(_CMAKE_CUDA_WHOLE_FLAG "-c")
set(_CMAKE_CUDA_RDC_FLAG "-rdc=true")
set(_CMAKE_CUDA_PTX_FLAG "-ptx")
set(_CMAKE_CUDA_CUBIN_FLAG "-cubin")
set(_CMAKE_CUDA_FATBIN_FLAG "-fatbin")
if(CMAKE_CUDA_COMPILER_VERSION VERSION_GREATER_EQUAL "11.7.0")
  set(_CMAKE_CUDA_OPTIX_FLAG "-optix-ir")
endif()

if(CMAKE_CUDA_COMPILER_VERSION VERSION_GREATER_EQUAL 11.2)
  set(CMAKE_CUDA_DEVICE_LINK_OPTIONS_IPO " -dlto")
endif()

set(CMAKE_CUDA_DEVICE_COMPILER_WRAPPER_FLAG "-Xcompiler=")
set(CMAKE_CUDA_DEVICE_COMPILER_WRAPPER_FLAG_SEP ",")
set(CMAKE_CUDA_DEVICE_LINKER_WRAPPER_FLAG "-Xlinker=")
set(CMAKE_CUDA_DEVICE_LINKER_WRAPPER_FLAG_SEP ",")

set(CMAKE_CUDA_DEVICE_LINK_MODE DRIVER)

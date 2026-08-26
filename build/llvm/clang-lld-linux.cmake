# Toolchain file to build LLVM using clang and link using lld
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_LINKER_TYPE LLD)

# Tell LLVM's build system to link with lld instead of the default linker
set(LLVM_USE_LINKER lld CACHE STRING "" FORCE)

# Use LLVM versions of ar and ranlib to avoid warnings about thinLTO object files
set(CMAKE_AR llvm-ar)
set(CMAKE_RANLIB llvm-ranlib)

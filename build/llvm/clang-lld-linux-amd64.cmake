# Toolchain file to build LLVM using clang and link using lld
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# Tell LLVM's build system to link with lld instead of the default linker
set(LLVM_USE_LINKER lld CACHE STRING "" FORCE)

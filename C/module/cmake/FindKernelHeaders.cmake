# BIG THANK YOU TO THE ORIGINAL AUTHOR
# https://gitlab.com/christophacham/cmake-kernel-module

# Find the kernel release
execute_process(
        COMMAND uname -r
        OUTPUT_VARIABLE KERNEL_RELEASE
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(KERNEL_VERSION 5.10.7-3)

# Find the headers
find_path(KERNELHEADERS_DIR
        include/linux/user.h
        PATHS /usr/lib/modules/${KERNEL_VERSION}-MANJARO/build
        )

message(STATUS "Kernel release: ${KERNEL_RELEASE}")
message(STATUS "Kernel headers: ${KERNELHEADERS_DIR}")

if (KERNELHEADERS_DIR)
    set(KERNELHEADERS_INCLUDE_DIRS
            ${KERNELHEADERS_DIR}/include
            /usr/lib/modules/5.10.7-3-MANJARO/build/arch/x86/include/
            CACHE PATH "Kernel headers include dirs"
            )
    set(KERNELHEADERS_FOUND 1 CACHE STRING "Set to 1 if kernel headers were found")
else (KERNELHEADERS_DIR)
    set(KERNELHEADERS_FOUND 0 CACHE STRING "Set to 1 if kernel headers were found")
endif (KERNELHEADERS_DIR)

mark_as_advanced(KERNELHEADERS_FOUND)
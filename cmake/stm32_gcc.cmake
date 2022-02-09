get_filename_component(STM32_CMAKE_DIR ${CMAKE_CURRENT_LIST_FILE} DIRECTORY)
list(APPEND CMAKE_MODULE_PATH ${STM32_CMAKE_DIR})

include(stm32/common)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
find_program(CMAKE_C_COMPILER NAMES ${STM32_TARGET_TRIPLET}-gcc PATHS ${TOOLCHAIN_BIN_PATH})
find_program(CMAKE_CXX_COMPILER NAMES ${STM32_TARGET_TRIPLET}-g++ PATHS ${TOOLCHAIN_BIN_PATH})
find_program(CMAKE_ASM_COMPILER NAMES ${STM32_TARGET_TRIPLET}-gcc PATHS ${TOOLCHAIN_BIN_PATH})
find_program(CMAKE_GCC_SIZE NAMES ${STM32_TARGET_TRIPLET}-size PATHS ${TOOLCHAIN_BIN_PATH})

set(CMAKE_EXECUTABLE_SUFFIX_C   .elf)
set(CMAKE_EXECUTABLE_SUFFIX_CXX .elf)
set(CMAKE_EXECUTABLE_SUFFIX_ASM .elf)

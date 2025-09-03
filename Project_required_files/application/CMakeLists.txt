cmake_minimum_required(VERSION 3.10)
project(appication)

add_subdirectory(
  .././Module/xor_cipher
   ${CMAKE_BINARY_DIR}/xor_cipher_build
)
add_subdirectory(
  .././Module/caesar_ciphe
    ${CMAKE_BINARY_DIR}/caesar_cipher_build
)


add_executable(output app.c)



target_include_directories(output PRIVATE
    .././Module/xor_cipher/inc
    .././Module/caesar_ciphe/inc
)

target_link_libraries(output PRIVATE xor_op caesar_op m)

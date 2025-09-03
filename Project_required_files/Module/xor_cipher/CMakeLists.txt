cmake_minimum_required(VERSION 3.10)
project(xor_cipher)
include_directories(inc)
add_library(xor_op SHARED
     src/xor_encrypt.c
     src/xor_decrypt.c
)


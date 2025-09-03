cmake_minimum_required(VERSION 3.10)
project(caesar_cipher)
include_directories(inc)
add_library(caesar_op STATIC
     src/caesar_encrypt.c
     src/caesar_decrypt.c
)

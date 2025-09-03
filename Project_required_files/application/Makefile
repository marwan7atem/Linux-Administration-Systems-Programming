XOR_LIB_DIR = .././Module/xor_cipher
CAESAR_LIB_DIR = .././Module/caesar_ciphe
INCLUDE_XOR_DIR = $(XOR_LIB_DIR)/inc
INCLUDE_CAESAR_DIR = .././Module/caesar_ciphe/inc
CFLAGS = -I$(INCLUDE_XOR_DIR) -I$(INCLUDE_CAESAR_DIR) -lm
OBJ = ./gen/app.o
XOR_LIB = ./libs/libxor_cipher.so
CAESAR_LIB = ./libs/libcaesar_cipher.a
include $(XOR_LIB_DIR)/xor_cipher.mk
include $(CAESAR_LIB_DIR)/caesar_cipher.mk

all: app.o xor caesar
	mkdir gen libs
	mv ./libxor_cipher.so ./libs
	mv ./libcaesar_cipher.a ./libs
	mv ./app.o ./caesar_encrypt.o ./caesar_decrypt.o ./xor_encrypt.o ./xor_decrypt.o ./gen
	gcc $(OBJ) -L. $(XOR_LIB) $(CAESAR_LIB) $(CFLAGS) -o output
app.o: app.c
	gcc -c app.c $(CFLAGS)

clean:
	rm -f *.o *.a *.so output
	rm -r gen libs


XOR_CIPHER_OBJ = ./xor_encrypt.o ./xor_decrypt.o
XOR_CIPHER_LIB = libxor_cipher.so
XOR_CFLAGS = $(CFLAGS) -fPIC

xor: $(XOR_CIPHER_OBJ)
	gcc $(XOR_CIPHER_OBJ) -o $(XOR_CIPHER_LIB) -shared

xor_encrypt.o: .././Module/xor_cipher/src/xor_encrypt.c
	gcc -c .././Module/xor_cipher/src/xor_encrypt.c $(XOR_CFLAGS)

xor_decrypt.o: .././Module/xor_cipher/src/xor_decrypt.c
	gcc -c .././Module/xor_cipher/src/xor_decrypt.c $(XOR_CFLAGS)


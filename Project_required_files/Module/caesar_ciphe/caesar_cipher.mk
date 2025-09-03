CAESAR_CIPHER_OBJ = ./caesar_encrypt.o ./caesar_decrypt.o
CAESAR_CIPHER_LIB = libcaesar_cipher.a
CAESAR_CFLAGS = $(CFLAGS)

caesar: $(CAESAR_CIPHER_OBJ)
	ar -cr $(CAESAR_CIPHER_LIB) $(CAESAR_CIPHER_OBJ)

caesar_encrypt.o: .././Module/caesar_ciphe/src/caesar_encrypt.c
	gcc -c .././Module/caesar_ciphe/src/caesar_encrypt.c $(CAESAR_CFLAGS)

caesar_decrypt.o: .././Module/caesar_ciphe/src/caesar_decrypt.c
	gcc -c .././Module/caesar_ciphe/src/caesar_decrypt.c $(CAESAR_CFLAGS)

menu
 : menu
.o max.o min.o diff.o sum.o
	gcc menu
	.o diff.o sum.o -o menu
	
menu
.o: menu
.c
	gcc -c menu
	.c -std=c99 -o menu
	..c
	gcc .c -std=c99 ..c
	gcc .c -std=c99 .o
diff.o: diff.c
	gcc -c diff.c -std=c99 -o diff.o
sum.o: sum.c
	gcc -c sum.c -std=c99 -o sum.o
clean:
	rm menu
	 *.o
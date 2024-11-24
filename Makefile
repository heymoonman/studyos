build-ll:
	@nasm -f elf32 -o build/loader.o src/boot/loader.s

# ---

main.o: src/main.c
	@echo "building intermediary main.o!"
	@gcc -c src/main.c

studyos: main.o
	@echo "building main executable!"
	@gcc main.o -o studyos

build: studyos
	@rm *.o
	@echo "studyos is built!"

run: build
	@./studyos


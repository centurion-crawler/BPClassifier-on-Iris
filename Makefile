main: main.o data_process.o classifier.o
	g++ *.o -o main
main.o: main.cpp
	g++ -c main.cpp -o main.o
data_process.o:data_process.cpp
	g++ -c data_process.cpp  -o data_process.o
classifier.o:classifier.cpp
	g++ -c classifier.cpp -o classifier.o
clean:
	rm *.o main *.txt
	@echo "[make files have been cleaned]"

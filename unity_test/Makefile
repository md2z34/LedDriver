SRC_TO_TEST = LedDriver
UNITY_HOME = /home/kipe/Downloads/Unity
UNITY_FIXTURE = $(UNITY_HOME)/extras/fixture/src
TEST_TARGET = LedDriverTest
TEST_TARGET_MAIN = LedDriverTestMain
CC = gcc
CFLAGS = -I. -I$(UNITY_HOME)/src/ -I$(UNITY_FIXTURE)/
DEPS = $(UNITY_HOME)/src/unity.c $(UNITY_HOME)/extras/fixture/src/unity_fixture.c

$(TEST_TARGET): $(TEST_TARGET).o $(TEST_TARGET_MAIN).o ../$(SRC_TO_TEST).o
	$(CC) $(TEST_TARGET).o $(TEST_TARGET_MAIN).o ../$(SRC_TO_TEST).o $(CFLAGS) $(DEPS) -o $(TEST_TARGET)

$(TEST_TARGET).o: $(TEST_TARGET).c $(DEPS)
	$(CC) -c $(TEST_TARGET).c $(CFLAGS) 
		
$(TEST_TARGET_MAIN).o: $(TEST_TARGET_MAIN).c $(DEPS)
	$(CC) -c $(TEST_TARGET_MAIN).c $(CFLAGS) 
	
$(SRC_TO_TEST).o: ../$(SRC_TO_TEST).c ../$(SRC_TO_TEST).h
	$(CC) -c ../$(SRC_TO_TEST).c $(CFLAGS) -o ../$(SRC_TO_TEST).o
	
run:
	./$(TEST_TARGET)

clean: 
	rm *.o $(TEST_TARGET)
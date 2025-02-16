CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude

SRC_DIR = src
TEST_DIR = tests
BIN_DIR = bin

SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
TEST_FILES = $(wildcard $(TEST_DIR)/*.cpp)

TEST_EXEC = $(BIN_DIR)/card_rpg_tests

all: $(TEST_EXEC)  

$(TEST_EXEC): $(TEST_FILES) $(SRC_FILES)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^ -lgtest -lgtest_main -pthread

test: $(TEST_EXEC)
	./$(TEST_EXEC)

clean:
	rm -rf $(BIN_DIR)

.PHONY: all test clean
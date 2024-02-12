# specify the compiler
CXX = g++

# specify compiler flags
CXXFLAGS = -Wall -g

# specify the target file
TARGET = main

# specify the source files
SRCS = main.cpp

# specify the object files
OBJS = $(SRCS:.cpp=.o)

RM = rm -f

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

clean:
	$(RM) $(OBJS) $(TARGET)

all: $(TARGET)
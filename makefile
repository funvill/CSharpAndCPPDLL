##
# Builds the example.cpp C++ DLL
# To check to see if the DLL was build properly use the following command. 
#     nm -g example.so
# 
## 
CXX= g++
CXXFLAGS := -m64 -Wall

LDFLAGS = -shared 
DEBUGFLAGS = -O0 -g3
RELEASEFLAGS = -O3
OBJECTFLAGS = -c -fmessage-length=0 -fPIC -MMD -MP

CXXFLAGS= -std=c++11 -O2 -Wall -Wextra
LINKFLAGS= -static
LIBS= -lpthread  -lz
DEBUGFLAGS   = -O0 -D _DEBUG
RELEASEFLAGS = -O2 -D NDEBUG -combine -fwhole-program

# this project needs:
TARGET = example.so
SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

all: $(TARGET) 

$(TARGET): $(OBJECTS)
	@echo 'Building target: $@'
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJECTS)
	@echo 'Finished building target: $@'
	@echo ' '

clean :
	-rm -f $(OBJECTS) $(TARGET)
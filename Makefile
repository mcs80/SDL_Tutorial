CXX = clang++
SDL = -framework SDL2_image -framework SDL2 

INC = -I./include -I/Library/Frameworks/SDL2_image.framework/Headers -I/Library/Frameworks/SDL2.framework/Headers 
BINDIR = ./bin
SRCDIR = ./Lessons/src

CXXFLAGS = -Wall -c -std=c++11 -stdlib=libc++  $(INC)
LDFLAGS = -F/Library/Frameworks $(SDL)
EXE = SDL_Lessons

all: $(BINDIR)/$(EXE)

$(BINDIR)/$(EXE): $(SRCDIR)/main.o
	
	$(CXX) $(LDFLAGS) $< -o $@

main.o: $(SRCDIR)/main.cpp

	$(CXX) $(CXXFLAGS) $< -o $@

clean:

	rm $(SRCDIR)/*.o && rm $(BINDIR)/$(EXE)
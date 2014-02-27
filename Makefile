CC=llvm-gcc
#LIBS=-lmultmod
#CFLAGS=-I. -L. -fPIC -std=c99
CFLAGS=-I. -L. -std=c99 -g
DEPS = multmod.h
OBJ = callmult.o
PYOBJ = multmod.po
#LLVM_MODULES = core jit native
#CPPFLAGS=`llvm-config --cppflags $(LLVM_MODULES)`
#LDFLAGS=`llvm-config --ldflags $(LLVM_MODULES)`
#LIBS=`llvm-config --libs $(LLVM_MODULES)`


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)


%.po: %.py
	pycc --header -c -o $@ $<


multtest: $(OBJ) $(PYOBJ)
	$(CC) $^ $(CFLAGS) $(LIBS) -o $@ `llvm-config --cxxflags --libs` `llvm-config --ldflags`
	#$(CC) $^ $(CPPFLAGS) $(LDFLAGS) $(LIBS) -o $@


clean:
	rm *.o *.po
	[ ! -f multtest ] || rm multtest

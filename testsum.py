from numba import jit

@jit
def sum(x, y):
    return x + y

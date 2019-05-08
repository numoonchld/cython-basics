## python only def and dynamic variables:
def mse():
    # """ compute mean square error of input array 'a' """
    a = [21, 7, 3, 11, 5, 108, 65]
    mean = sum(a)/len(a)
    accum = 0
    
    for num in a:
        accum += (num - mean) ** 2

    return accum/mean
    
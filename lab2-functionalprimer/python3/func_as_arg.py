def listFunc():
    return [i for i in range(a, b)] #Create list of ints from a to b, Haskell equivalent [a..b]

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc())
    else:
        return sum(inpFunc())/5

a = int(input("Please enter a value for a"))
b = int(input("Please enter a value for b"))

print(applicatorFunc(listFunc, 's'))
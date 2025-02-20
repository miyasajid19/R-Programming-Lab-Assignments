# x :: sucesses 
# from 
# k ::  total successes
# from 
# n :: selection
# with in 
# N :: total selection
# and 
# n-x :: failure 
# from 
# N-k :: total failure
# this is hypergeometric distribution 

# syntax
# dhyper(x,k,N-k,n)


# _________________________________________________________________
# Lots of 40 components each are deemed inacceptable if they contain 3 or more defective. 
# The procedure for sampling a lot is to select 5 components at random and to reject the 
# lot if defective is found. What is the probability that exactly 1 defective is found in the sample if there is3 defective in entire lot


    N<-40
    n=5
    k<-3
    x=1
    dhyper(x,k,N-k,n)
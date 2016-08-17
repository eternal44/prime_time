# Prime number times table
Prints a multiplication table of prime numbers.


### Installation
```
gem install minitest
```


### Usage
Enter the following in your console to generate a multiplications table 
with 'N' number of primes.

```
$ ruby timesTable.rb <'N' primes>
```
*Example:*
```
$ ruby timesTable.rb 10
```


### Test
Enter the following command in your console to run the tests

```
$ ruby specs/prime_table_generator.specs.rb
```


### Complexity
My solution is running at O(n^2) for time & space complexity.  Here are some 
superficial optimizations I thought of but for the sake of code readability 
and testing I chose not to implement as it would have improved complexity 
by fractions of the coefficient.

- combine build and print functions (harder to test but we cut our run time 
in half)

- cache product results (increases auxilary space by O(n^2) for ~1/2 improvement in 
time complexity)
 
Depending on how we want to optimize we could consider the options above.

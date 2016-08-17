# Prime number times table
Prints a times table of prime numbers


### Installation
gem install minitest


### Usage
Enter the following in your console to generate a multiplications table with 'N' number of primes.

$ ruby timesTable.rb <'N' primes>


### Test
Enter the following command in your console to run the tests

$ ruby specs/prime_generator.specs.rb


### Complexity
My solution is running at O(n2) for time & space complexity.  Here are some superficial optimizations I thought of but for the sake of code readability and testing I chose not to implement as it would have improved complexity by fractions of the coefficient.

- combine build and print functions (harder to test)
- cache product results (sacrifice auxilary space for ~1/2 improvement in time complexity)
 
Depending on our needs during scaling we could consider the optimizations above.

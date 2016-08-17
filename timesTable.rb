class TimesTable
  attr_accessor :size, :prime_arr

  def initialize(size)
    @size = size
    @prime_arr = prime_array(size)
  end

  def is_prime?(target_number)
    max_check = Math.sqrt(target_number)

    2.upto(max_check) do |check_num|
      return false if target_number % check_num == 0
    end

    true
  end

  def prime_array(n_primes)
    result_arr = []
    current_num = 2

    while result_arr.length < n_primes do
      if(is_prime?(current_num))
        result_arr.push(current_num)
      end

      current_num += 1
    end

    result_arr
  end

  def build_product_matrix(table_size)
    primes_arr = prime_array(@size)
    result_matrix = [[0] + primes_arr]

    (0..primes_arr.count - 1).each do |col_index|
      result_matrix[col_index + 1] = [primes_arr[col_index]]
      (0..primes_arr.count - 1).each do |row_index|
        product = primes_arr[row_index] * primes_arr[col_index]
        result_matrix[col_index + 1].push(product)
      end
    end

    result_matrix
  end

  def print_table(prime_arr)
    0..prime_arr.count do |y_pointer|
      print_str = ''
      0..prime_arr.count do |x_pointer|
        print_str += ' ' + prime_arr[y_pointer][x_pointer].to_s
      end
      puts print_str
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  my_table = TimesTable.new(ARGV[0].to_i)
  my_table.print_table(my_table.prime_arr)
end

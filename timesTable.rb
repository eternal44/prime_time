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

  def build_product_matrix
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

  def print_table(matrix)
    max_space = matrix.last.last.to_s.length + 1

    (0..matrix.count - 1).each do |y_pointer|
      print_str = ''

      (0..matrix.count - 1).each do |x_pointer|
        current_number = matrix[y_pointer][x_pointer].to_s 
        print_str += ' ' * (max_space - current_number.length) + current_number
      end

      puts print_str
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  my_table = TimesTable.new(ARGV[0].to_i)
  product_matrix = my_table.build_product_matrix
  my_table.print_table(product_matrix)
end

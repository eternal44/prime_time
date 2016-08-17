class TimesTable
  def something
    puts ARGV[0]
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
end

if __FILE__ == $PROGRAM_NAME
  puts TimesTable.new.something
end

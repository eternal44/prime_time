class TimesTable
  def something
    puts ARGV[0]
  end

  def is_prime?(target_number)
    max_check = Math.sqrt(target_number)
    puts max_check

    2.upto(max_check) do |check_num|
      return false if target_number % check_num == 0
    end

    true
  end
end

if __FILE__ == $PROGRAM_NAME
  puts TimesTable.new.something
end

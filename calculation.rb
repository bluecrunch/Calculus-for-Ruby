def add(a, b)
  return a + b
end

def multiply(a, b)
  return a * b
end

def substract(a, b)
  return a - b
end

def division(a, b)
  return a / b
end

def percentage(c, d)
  return c.to_f / d.to_f * 100.0
end

#I have to work on division


$i = 1
$num = 10
$w = 0
$r = 0



while $i < $num  do
      value1 = rand(100)
      value2 = rand(100)

          if $i.even?
            if ($i == 2) || ($i == 10)
              print "Task ", $i ," Subtraction: What is the difference between ", value2 ," and ", value1, "?"
              ergebnis = gets.chomp().to_i
              if ergebnis != substract(value1, value2)
                  puts substract(value1, value2)
                  puts ergebnis
                  puts "Wrong!"
                  $w +=1
                  puts $w
                elsif ergebnis == substract(value1, value2)
                  puts "Right!"
                  $r +=1
                  puts $r
                end

            elsif ($i == 4) || ($i == 8) || ($i == 6)

              print "Task ", $i ," Addition: What is the sum of ", value2 ," and ", value1, "?"
              ergebnis = gets.chomp().to_i
              if ergebnis != add(value1, value2)
                  puts add(value1, value2)
                  puts ergebnis
                  puts "Wrong!"
                  $w +=1
                  puts $w
                elsif ergebnis == add(value1, value2)
                  puts "Right!"
                  $r +=1
                  puts $r
              end
            end
      elsif $i.odd?

            if ($i == 1) || ($i == 9)
              print "Task ", $i ," Division: What is the quotient of ", value2 ," and ", value1, "?"
              ergebnis = gets.chomp().to_i


                      if ergebnis != division(value1, value2)
                          puts division(value1, value2)
                          puts ergebnis
                          puts "Wrong!"
                          $w +=1
                          puts $w
                        elsif ergebnis == division(value1, value2)
                          puts "Right!"
                          $r +=1
                          puts $r
                      end
            elsif ($i == 3) || ($i == 7) || ($i == 5)

              print "Task ", $i ," Multiplication: What is the product of ", value2 ," and ", value1, "?"
              ergebnis = gets.chomp().to_i


                      if ergebnis != multiply(value1, value2)
                          puts multiply(value1, value2)
                          puts ergebnis
                          puts "Wrong!"
                          $w +=1
                          puts $w
                        elsif ergebnis == multiply(value1, value2)
                          puts "Right!"
                          $r +=1
                          puts $r
                      end
            end
      end


      $i +=1

      if $i == 10
        puts percentage($r,$i)
      else
        puts "Go on!"
      end
end

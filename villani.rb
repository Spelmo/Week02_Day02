# Si on liste tous les entiers naturels en dessous de 10 qui sont
# multiples de 3 ou 5,on obtient 3, 5, 6, et 9. La somme de ces
# nombres est egale a 23.
# Trouve la somme des multiples de 3 et 5 inferieurs a 1000.

def villani(number)
  sum = 0
  1.upto(number - 1) do |v|
    if (v % 3).zero? || (v % 5).zero?
      sum += v
    end
  end
  sum
end

puts villani(1000)

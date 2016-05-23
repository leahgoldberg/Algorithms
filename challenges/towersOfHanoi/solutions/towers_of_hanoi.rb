def hanoi(rings, from, to, aux)
  if rings==1
    to << from.pop
    display(from, to, aux)
  else
    hanoi(rings-1, from, aux, to)
    hanoi(1, from, to, aux)
    hanoi(rings-1, aux, to, from)
  end
end

def display(a, b, c)
  puts 'A'.ljust(5) + 'B'.center(5) + 'C'.rjust(5)
  a.each { |ring| puts ring.to_s.ljust(8) }
  b.each { |ring| puts ring.to_s.center(30) }
  c.each { |ring| puts ring.to_s.rjust(8) }
  puts '*' * 50
end

a = [1,2,3,4,5]
b = []
c = []

display(a, b, c)
hanoi(5, a, b, c)

def tr(from, to, str)
  conversions = create_hash(from, to)
  replace_chars(conversions, str)
end

def create_hash(from, to)
  from_arr = from.split('')
  to_arr = to.split('')
  Hash[from_arr.zip(to_arr)]
end

def replace_chars(hash, str)
  str.chars.each_with_index do |c, i|
    str[i] = hash[c] if hash[c]
  end
  str
end


puts tr("abc","123","dcba")=="d321"

puts tr("abc","123","LOBSTER")=="LOBSTER"

puts tr("123", "abc", "bad")=="bad"

puts tr("1a","a1","aax11")=="11xaa"

puts tr("1aa", "2bc", "ajhi")=='cjhi'

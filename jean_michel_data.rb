dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# > jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

def jean_michel_data(str, dic)
  hash = {}
  dic.each do |i|
    unless str.downcase.scan(i).empty?
      hash[i] = str.downcase.scan(i).length
    end
  end
  hash
end

puts jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)


# deuxieme exo
dictionnary = %w("the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are")

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r")
  f.each_line do |line|
    data += line
  end
  return data
end

shakespeare_string = get_file_as_string 'shakespeare.txt'

puts jean_michel_data(shakespeare_string, dictionnary)

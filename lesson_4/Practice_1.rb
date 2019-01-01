flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

myhash = flintstones.each_with_object({}).with_index do |(name, hash), ndx|
    hash[name] = ndx
  end
  
p myhash
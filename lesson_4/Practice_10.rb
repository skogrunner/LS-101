munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, ppi|
  age_group = case ppi["age"]
              when (0..17) then 'kid'
              when (18..64) then 'adult'
              when (65..Float::INFINITY) then 'senior'
              else 'invalid'
              end
  munsters[name]["age_group"] = age_group
end

p munsters
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

AGE_GROUPS = {}

munsters.each do |key, value|

  value['age_group'] = if value['age'] < 18
                        "kid"
                       elsif value['age'] > 17 && value['age'] < 66
                        'Adult'
                       else
                        'Senior'
                       end
end

p munsters


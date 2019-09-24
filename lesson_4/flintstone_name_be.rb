flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name[0..1] == "Be"}

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name = name[0, 3]}

p flintstones
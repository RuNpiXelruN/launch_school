family= { uncles: ["bob", "jane"],
          cousins: ["jeremy", "ben"],
          fiance: ["annabelle"],
          children: ["sawyer"]
        }
        
extended_family = family.select do |k,v|
    k == :uncles || k == :cousins
end

close_family = family.select do |k,v|
    k == :fiance || k == :children
end

ext_arr = extended_family.values.flatten

close_arr = close_family.values.flatten

p ext_arr

puts '---------'

p close_arr
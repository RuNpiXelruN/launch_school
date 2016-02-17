
arr = [2,5,567,342,1,76]

new_arr = []

arr.map do |x|
    y = x + 2
    new_arr.push(y)
end

p arr

p new_arr
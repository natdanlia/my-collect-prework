def my_collect(array)

    i = 0 
  while i < array.length 
     yield array[i]
    i += 1 
    array.push("#{my_collect(array)}")
    array.shift
  end
  array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  array.push"#{name.split(" ").first}"
  array.shift
end

def my_each(dog)
  size.my_times do |i|
    yield self[i]
    end
  self

end

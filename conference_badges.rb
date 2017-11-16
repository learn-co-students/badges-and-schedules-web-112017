def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  badge_array = []
  name_array.each do |name|
    badge_array.push(badge_maker(name))
  end
  return badge_array
end

def assign_rooms(name_array)
  assign_array = []
    name_array.each_with_index do |name, room|
      assign_array.push(
        "Hello, #{name}! You'll be assigned to room #{room+1}!"
        )
    end
  return assign_array
end

def printer(name_array)
  batch = batch_badge_creator(name_array)
  room = assign_rooms(name_array)
  batch.each do |line|
    puts line
  end
  room.each do |line|
    puts line
  end
end

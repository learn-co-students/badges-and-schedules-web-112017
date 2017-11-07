# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badges = []
  for name in array
    badges << badge_maker(name)
  end
  return badges
end

def assign_rooms(array)
  room = []
  array.each_with_index do |name, num|
    room << "Hello, #{name}! You'll be assigned to room #{num + 1}!"
  end
  return room
end

def printer(attendees)
  batch_badge_creator(attendees).each do |name|
    puts name.chomp
  end
  assign_rooms(attendees).each do |room|
    puts room.chomp
  end
end

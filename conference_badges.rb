# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(arr_of_names)
  batch_arr = Array.new
  arr_of_names.each do |name|
    batch_arr << badge_maker(name)
  end
  return batch_arr
end

def assign_rooms(list_of_speakers)
  room_assignments = Array.new
  list_of_speakers.each_with_index do |speaker, index|
    room_assignments << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignement|
    puts assignement
  end
end

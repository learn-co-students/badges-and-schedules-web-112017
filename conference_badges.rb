# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    new_array = []
    array.each { |item|
        new_array.push(badge_maker(item))
    }
   new_array
end

def assign_rooms(array)
    rooms = [1, 2, 3, 4, 5, 6 ,7]
    output = []
    enum = array.each
    enum2 = rooms.each
    loop do
        a1, a2 = enum.next, enum2.next
        output.push("Hello, #{a1}! You'll be assigned to room #{a2}!")
        end
    output
end

def printer(array)
  badges = batch_badge_creator(array)
  assignments = assign_rooms(array)
  badges.each do |a|
      puts a
      end
  assignments.each do |a|
      puts a
      end
end

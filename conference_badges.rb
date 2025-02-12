def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array_messages = []
  array.each { |name| array_messages << badge_maker(name)}
  return array_messages
end

def assign_rooms(array)
  room_assignment_messages = []
  array.each_with_index do |name, index|
    room_assignment_messages << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  return room_assignment_messages
end



def printer(names)
  array_messages = batch_badge_creator(names)
  room_messages = assign_rooms(names)
  
  array_messages.each do |message|
    puts message
  end
  
  room_messages.each do |message|
    puts message
  end
end
class RoomArea
  attr_writer :length_in_feet

  def run_app
    prompt_length
    prompt_width
    recap_message
  end

  def prompt_length
    puts "What is the length of the room in feet?"
    length_in_feet = gets.to_s.chomp
    @length_in_feet = length_in_feet.to_i
  end

  def prompt_width
    puts "What is the width of the room in feet?"
    width_in_feet = gets.to_s.chomp
    @width_in_feet = width_in_feet.to_i
  end

  def recap_message
   "You entered dimensions of #{@length_in_feet.to_s} feet by #{@width_in_feet.to_s} feet."
  end

end

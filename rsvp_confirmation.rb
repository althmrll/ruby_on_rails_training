# Script that filters and transforms data using enumerables

rsvp_confirmation={
    "Sam"=>"rsvp",
    "Amy"=>"rsvp",
    "Aly"=>"not coming",
    "Sally"=>"not answered",
    "James"=>"not coming"
}

rsvp_confirmation.each do |key,value|
    if value=="rsvp"
        puts "See you there " + key + "!!"
    elsif value=="not answered"
        puts "I hope you can come. Please answer by Saturday."
    else
        puts "That's unfortunate. have a nice day."
    end
end

people_coming=rsvp_confirmation.select {|key,value| value=="rsvp"}
coming_head_count=people_coming.length

puts "\n\nSummary:"
puts "There are " + coming_head_count.to_s + " people coming."
puts people_coming.keys
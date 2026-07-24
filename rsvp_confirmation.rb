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
not_coming=rsvp_confirmation.select {|key,value| value=="not coming"}
no_answer=rsvp_confirmation.select {|key,value| value=="not answered"}
coming_head_count=people_coming.length
not_coming_hc=not_coming.length
no_answer_hc=no_answer.length

puts "\n\nSummary:"
puts "There are " + coming_head_count.to_s + " people coming."
puts people_coming.keys

puts "\nThere are " + no_answer_hc.to_s + " people not yet answering."
puts no_answer.keys

puts "\nThere are " + not_coming_hc.to_s + " people not coming."
puts not_coming.keys


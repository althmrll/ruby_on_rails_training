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
        puts "See you there " + key.upcase + "!!"
    elsif value=="not answered"
        puts "I hope you can come #{key.upcase}. Please answer as soon as possible. Thank you!"
    else
        puts "Aww... Chat me anytime if you change your mind. See you aroud #{key.upcase}"
    end
end

people_coming=rsvp_confirmation.select {|key,value| value=="rsvp"}
not_coming=rsvp_confirmation.select {|key,value| value=="not coming"}
no_answer=rsvp_confirmation.select {|key,value| value=="not answered"}
coming_head_count=people_coming.length
not_coming_hc=not_coming.length
no_answer_hc=no_answer.length

puts "\n\nSummary:"
puts "There #{coming_head_count==1? "is":"are"} #{coming_head_count.to_s} #{coming_head_count==1? "person":"people"} coming."
puts people_coming.keys

puts "\nThere #{no_answer_hc==1? "is":"are"} #{no_answer_hc.to_s} #{no_answer_hc==1? "person":"people"} not yet answering."
puts no_answer.keys

puts "\nThere #{not_coming_hc==1? "is":"are"} #{not_coming_hc.to_s} #{not_coming_hc==1? "person":"people"} not coming."
puts not_coming.keys
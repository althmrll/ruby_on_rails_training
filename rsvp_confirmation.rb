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
        puts "I hope you can come " + key + ". Please answer by Saturday."
    else
        puts "That's unfortunate. have a nice day."
    end
end
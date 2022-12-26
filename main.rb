def substrings(word, dictionary)
    res_arr = Hash.new()
    split_string = word.split(' ')
    for w in split_string
        for i in 0..(w.length-1)
            for j in i..(w.length-1)
                # puts "(#{i},#{j})"
                subw = w[i..j].downcase
                # puts subw
                if dictionary.include?(subw) then 
                    current_score = res_arr.fetch(subw,0)
                    res_arr[subw] = current_score + 1
                end
            end
        end
    end

    res_arr
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?",dictionary)
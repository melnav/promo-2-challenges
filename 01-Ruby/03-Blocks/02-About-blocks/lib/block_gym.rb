def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]

  if attr == nil
    res = "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    res = "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end

  res

end

html = tag("h1") do
  tag("a", ["href", "kitt.lewagon.org"]) do
    2 + 2
    "kitt"
  end
end



def timer_for
  #TODO:  Return time taken to execute the given block

  puts "début du block"
  start = Time.now

  response = yield

  puts response

  the_end = Time.now

  the_end - start
end

duration = timer_for() do
  sleep(5)
  message = "o" + "k"
  message
end


puts duration










def transform(element)
  #TODO:  Simply execute the given block on element
end

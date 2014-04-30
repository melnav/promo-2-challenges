require_relative 'config/application'
require_relative 'crud'


def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end


db = SQLite3::Database.new(DB_PATH.to_s)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Update post"
  puts "4. Delete a post"
  puts "5. Delete all posts"
  puts "6. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    create_post(db, post)
  when 2
    get_posts(db).each do |post|
      date = DateTime.parse(post[3]).strftime"%d/%m/%y"
      my_post = "The name of the post is #{post[1]}, from #{post[2]} published #{date}
      and the rating is#{post[4]} and the id is #{post[0]}"
      p my_post
    end
    #TODO: prints nicely the results from DB queries (you could use #strftime to format datetime display)
  when 3
    #id fixnum
    #name
    get_posts(db).each do |post|
      puts "#{post[1]} **** #{post[0]}"
    end
    puts "what the id of the post that you want to change ?"
    id = gets.chomp.to_i
    name = ask_and_get("name")
    update_post(db, id, name)#changer le nom d'un post

  when 4
    get_posts(db).each do |post|
      puts "#{post[1]} **** #{post[0]}"
    end
    puts "what the id of the post that you want delete ?"
    id = gets.chomp.to_i
    delete_post(db, id)

  when 5
    delete_posts(db)

  #TODO: add other CRUD tasks to your interface if you wish!
  when 6
    break
	end

end


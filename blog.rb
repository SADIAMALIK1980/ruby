class BlogPost < Blog

    def initialize(title, content, pub_date, author)
	@title = get_input("What is your Blog's name?"), 
	@content = get_input("Enter your post"), 
	@pub_date = Time.now
	@author = get_input("What is your name?")
	end

blog_details = {
	title: @title,
	content: @content,
	pub_date: @pub_date,
	author: @author
}
end

def runblog
my_blog = BlogPost.new
end

runblog

class Blog 
@@no_of_post=0

def display_details()
      puts "title #@title"
     puts "author #@author"
      puts "content #@content"
      puts "pub_date #@pub_date"
    end
    def total_posts()
       @@no_of_post += 1
       puts "Total number of Blog Posts: #@@no_of_post"
    end
end


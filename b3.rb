class Blog
@@total_posts = []
@@no_of_posts = 0


	def publish_details()
   
     		[@@total_posts].each do 
      		puts "Blog Title: #@title"
      		puts "Blog Post #@content"
       		puts "Author #@author"
	 		puts "Published #@pub_date"
		end
    puts "Total number of blog posts: #@@no_of_posts"
	end




     def save_blog(my_blog)
     @@total_posts[@@no_of_posts] = my_blog
     @@no_of_posts += 1
     end


   end



class BlogPost < Blog
   
   def initialize
    puts "Name your blog post:"
    @title = gets.chomp
    puts "Author Name:"
    @author = gets.chomp
    puts "Enter your post:"
    @content = gets.chomp	
    puts @pub_date = Time.now
    puts "Do you want to create another post? [Y/N]"
	runblog if gets.chomp.downcase == 'y'
   end
  
end



def runblog
# Create Objects	
my_blog = BlogPost.new

# Call Methods
my_blog.save_blog(my_blog)
my_blog.publish_details()
end

runblog




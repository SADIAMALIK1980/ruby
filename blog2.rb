# blog.rb

class Blog 
	@@num_posts= 0
	@@the_blog = []	

	def get_input(input_str)
		puts input_str
		return_value = gets.chomp
	end

  def publish_blog
		@@the_blog.each do |thehash|
		  puts "\nTitle: #{thehash.fetch(:title)}"
		  puts "Entry: #{thehash.fetch(:content)}"
		  puts "by #{thehash.fetch(:author_name)} on #{thehash.fetch(:p_date)}"
		end
	end

	def test_user(test_str, true_val)
		puts test_str
		gets.downcase.chomp == true_val ? true : false
	end

	def save_blog (blog_hash)  
		@@the_blog[@@num_posts] = blog_hash
		@@num_posts += 1  #increment the number of posts
		test_user('Would you like to make another entry? Y/N', 'y') ? runblog : publish_blog
	end

end

class BlogPost < Blog
	attr_accessor :author, :title, :content, :pub_date, :blog_post

	def initialize
		@author = get_input ("What is your name?") 
		@title = get_input("Enter your Blog Title:")
		@content = get_input("Enter your blog post now:")	
		@pub_date = Time.now.to_s
			5.times do @pub_date.chop! end

		@blog_post = {
			title: @title,
			content: @content,
			p_date: @pub_date,
			author_name: @author
		}
		self.save_blog(@blog_post)
	end

end

def runblog
	my_blog = BlogPost.new
  puts my_blog.inspect
end

runblog
require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc42665e657c42a18304acd96a9c12f2e"
auth_token = "91eb4018f92f2279366a8e39d819d86c"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "What is your question?"
question = gets.chomp

num = Random.new
num = num.rand(1..20)

answer = case num
when 1
  "It is certain"
when 2
  "It is decidedly so"
when 3
  "Without a doubt"
when 4
  "Yes, definitely"
when 5
  "You may rely on it"
when 6
  "As I see it, yes"
when 7
  "Most likely"
when 8
  "Outlook good"
when 9
  "Yes"
when 10
  "Signs point to yes"
when 11
  "Reply hazy try again"
when 12
  "Ask again later"
when 13
  "Better not tell you now"
when 14
  "Cannot predict now"
when 15
  "Concentrate and ask again"
when 16
  "Don't count on it"
when 17
  "My reply is no"
when 18
  "My sources say no"
when 19
  "Outlook not so good"
when 20
  "Very doubtful"
end

message = @client.account.messages.create(
  :from => "+14079012485", 
  :to => "+15199363160", 
  :body => "You asked #{question}? The Magic 8-Ball says: #{answer}")
 
puts message.to
puts message.body
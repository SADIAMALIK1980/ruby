require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc42665e657c42a18304acd96a9c12f2e"
auth_token = "91eb4018f92f2279366a8e39d819d86c"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+14079012485", 
  :to => "+15199363160", 
  :body => "Haaaii")
 
puts message.to
puts message.from
puts message.body
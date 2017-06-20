#Include Cinch Framework
require 'cinch'

#Creates new bot object
bot = Cinch::Bot.new do
  #Configures irc server settings for bot
  configure do |c|
    c.server = "irc.freenode.org"
    c.nick = "OpenShiftBot"
    c.channels = ["#openshiftbot"]
  end
  
  #Listens for "hello", replies to whomever initiated the greeting
  on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
  end

#Ends the bot declaration and start running it
end

bot.start
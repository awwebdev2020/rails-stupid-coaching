class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @mymessage = params[:message]
    if params[:message] == 'I am going to work'
        puts params[:message]
        @stupidAnswer = @coach[0]
    elsif params[:message].include?("?")
        # puts 'Silly question, get dressed and go to work!'
        @stupidAnswer = @coach[1]
    else 
        # puts "I don't care, get dressed and go to work!"
        @stupidAnswer = @coach[2]
    end
  end
end


# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
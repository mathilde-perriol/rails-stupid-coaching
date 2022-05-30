# frozen_string_literal: true

# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:answer]
    @message = 'default message'
    if @answer == 'I am going to work'
      @message = 'Great!'
    elsif @answer.end_with?("?")
      @message = "Silly question, get dressed and go to work!"
    else
      @message = "I don't care, get dressed and go to work!"
    end
    @message
  end
end

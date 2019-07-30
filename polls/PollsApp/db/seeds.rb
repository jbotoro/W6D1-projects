# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  
  User.destroy_all
    user1 = User.create!(username: 'CJ')
    user2 = User.create!(username: 'Flarnie')
    user3 = User.create!(username: 'Jeff')
    user4 = User.create!(username: 'Georges St. Pierre')
    user5 = User.create!(username: 'Ned')
  
  Poll.destroy_all
    poll1 = Poll.create!(title: 'Election 2020', author_id: 2)
    poll2 = Poll.create!(title: 'Flarnie', author_id: 3)
    poll3 = Poll.create!(title: 'Jeff', author_id: 5)
    poll4 = Poll.create!(title: 'Georges St. Pierre', author_id: 1)
    poll5 = Poll.create!(title: 'Ned', author_id: 4)
  
  Question.destroy_all
    question1 = Question.create!(text: 'Hello?', poll_id: 1)
    question2 = Question.create!(text: 'Vote?', poll_id: 3)
    question3 = Question.create!(text: 'Exist?', poll_id: 4)
    question4 = Question.create!(text: 'Are you hungry?', poll_id: 5)
    question5 = Question.create!(text: 'Are you awake?', poll_id: 2)

  AnswerChoice.destroy_all
    answer_choice1 = AnswerChoice.create!(question_id: 1, choice: 'Yes')
    answer_choice2 = AnswerChoice.create!(question_id: 2, choice: 'Yes')
    answer_choice3 = AnswerChoice.create!(question_id: 3, choice: 'No')
    answer_choice4 = AnswerChoice.create!(question_id: 4, choice: 'Yes')
    answer_choice5 = AnswerChoice.create!(question_id: 5, choice: 'Maybe')
  
  
  Response.destroy_all
    response1 = Response.create!(user_id: 1, answer_choice_id: 3)
    response2 = Response.create!(user_id: 2, answer_choice_id: 4)
    response3 = Response.create!(user_id: 3, answer_choice_id: 5)
    response4 = Response.create!(user_id: 4, answer_choice_id: 1)
    response5 = Response.create!(user_id: 5, answer_choice_id: 2)

  
 

  
 

  
  # AnswerChoice.destroy_all
  #   answer_choice1 = AnswerChoice.create!(question_id: 1, choice: 'Yes')
  #   answer_choice2 = AnswerChoice.create!(question_id: 2, choice: 'Yes')
  #   answer_choice3 = AnswerChoice.create!(question_id: 3, choice: 'No')
  #   answer_choice4 = AnswerChoice.create!(question_id: 4, choice: 'Yes')
  #   answer_choice5 = AnswerChoice.create!(question_id: 5, choice: 'Maybe')
end
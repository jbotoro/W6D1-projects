class Response < ApplicationRecord

  belongs_to :respondent,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  has_one :question,
    through: :answer_choice,
    source: :question

  has_many :sibling_responses,
    through: :question,
    source: :responses

  def actual_siblings
    
    sibling_responses.to_a
    
  end
  
  # validate :not_duplicate_response

  # def not_duplicate_response
  #   sibling_responses.length == 1
  # end

end
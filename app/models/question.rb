class Question < ApplicationRecord
  belongs_to :survey
  belongs_to :question_type
  has_many :options
  has_many :responses, :through => :options
end

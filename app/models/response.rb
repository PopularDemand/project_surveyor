class Response < ApplicationRecord
  belongs_to :question, :through => :option
  belongs_to :option
end

class Question < ActiveRecord::Base
  validates :body, presence: true
  validates :answer, presence: true
end

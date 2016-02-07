require 'rails_helper'

RSpec.describe Question, type: :model do

  it "is valid with a body and answer" do
    @question = Question.new(
      body: "testquestion",
      answer: "testanswer")
    expect(@question).to be_valid
  end

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NUM_SURVEYS = 10
QUESTION_TYPES = [QuestionType.create(question_type: 'multiple choice'), QuestionType.create(question_type: 'single choice')]
NUM_QUESTIONS = 100
NUM_RESPONSES = 6

NUM_SURVEYS.times do |i|
  Survey.create(
    title: Faker::Book.title,
    quota: 3,
    description: Faker::ChuckNorris.fact
  )
end

NUM_QUESTIONS.times do |i|
  Question.create(
    survey_id: Survey.all.to_a.sample.id,
    question_type_id: QUESTION_TYPES.sample.id,
    prompt: Faker::Hipster.sentence + "..?",
    required_answer: [true, false].sample
  )
end

Question.all.each do |q|
  rand(2..5).times do
    option = Option.create(
        question_id: q.id,
        text: Faker::Company.bs
      )
    q.options << option
    option.responses << Response.create(
                          option_id: option.id
                        )
  end
end
# project_surveyor
Build it, take it, view it.

[A Ruby on Rails project from the Viking Code School which uses Active Record Associations, nested forms, collection forms, range fields, and PostgreSQL](https://www.vikingcodeschool.com)

1. What is the relationship between a survey and its questions?
- one-to-many.
2. How might you create a survey and also create questions for it?
- in a nested form
3. What is the relationship between a multiple choice question and its options?
- one-to-many.
4. How do you create a multiple choice questions and also create options for it?
- nested form

Entities:
  survey
  question
  responses
  answers

Relationships
  survey/question = one-to-many surveys have many questions but questions belong to only one survey

  question/responses = one-to-many questions have many responses but responses only have one question

  # idea! : storing multiple choice answers as an array, instead of needing the answers entity

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Subject.create("start_time" => "9", "subject" => "Spanish" )
Subject.create("start_time" => "10", "subject" => "French")

q1 = Quiz.create("title" => "Quiz-1", "description" => "The first quiz", "grade_level" => 9, "questions" => "A list of questions", "correct_responses" => "A list of their corresponding answers", "video_url" => "http://example.com", "subject_id" => 1)
q2 = Quiz.create("title" => "Quiz-2", "description" => "The second quiz", "grade_level" => 10, "questions" => "2A list of questions", "correct_responses" => "2A list of their corresponding answers", "video_url" => "http://example2.com", "subject_id" => 2)

t1 = Teacher.create("name" => "Roberta", "school" => "Montini")
t2 = Teacher.create("name" => "Arthur", "school" => "Montini")

Assessment.create("grade_received" => "A", "student_responses" => "These are the responses", "quiz_id" => 1, "student_id" => 1)
Assessment.create("grade_received" => "B", "student_responses" => "2These are the responses", "quiz_id" => 2, "student_id" => 2)

Student.create("name" => "Johnny")
Student.create("name" => "Sarah")

t1.quizzes << q1
t2.quizzes << q2


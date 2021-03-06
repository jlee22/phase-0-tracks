# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#1
get '/contact' do
  "Address: <br> 1234 Birch St Unit 15, <br>Bobtown, CA 12345"
end

#2
get '/great_job' do
    name = params[:name]
    if name
       "Good job, #{name}!"
    else
       "Good job!"    
    end
end
 
#3
get '/:number_1/+/:number_2' do
  "#{params[:number_1]} + #{params[:number_2]} = #{params[:number_1].to_i+params[:number_2].to_i}"
end

#4 bonus - Select all students at a certain campus and return the results
get '/students_campus/:campus' do

  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])

  response = ""
  student.each do |student|
    response << "#{student['name']}<br>"
  end
  "These students are from #{params[:campus]}: <br><br> #{response}"

end

#Release 1:
# 1. Is Sinatra the only web app library in Ruby? What are some others?
# -No, there are others such as Cuba, Padrino and Lotus.

# 2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra?
#    What are some others?
# -No, there options such as ActiveRecord and DataMapper.

# 3. What is meant by the term web stack?
# -A Web stack is the collection of software required for Web development. 
#  At a minimum, a Web stack contains an operating system (OS), 
#  a programming language, database software and a Web server. 
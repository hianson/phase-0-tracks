# require gems
require 'sinatra'
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

# write a GET route that displays
# an address

get '/contact' do
	address = "123 Main St."
	"Contact us at #{address}"
end

# write a GET route that takes a person's name
# as a query parameter and say "Good job, [person's name]!"
# else if no parameter, say "Good job!"
get '/great_job' do
	if params[:name] == nil
		"Good job!"
	else
		"Good job, #{params[:name]}!"
	end
end

# route which adds two numbers and responds with result
get '/:n1/:n2' do
	n1 = params[:n1].to_s
	n2 = params[:n2].to_s
	"#{n1.to_i + n2.to_i}"
end

# route which lets user search db

get '/campus' do
	if params[:name] == nil
		"Please enter a 'name' query parameter for a campus (SF, SD, SEA, CHI, NYC)."
	else
	  campus = db.execute("SELECT * FROM students where campus=?", params[:name])
	  response = ""
	  campus.each do |student|
	    response << "ID: #{student['id']}<br>"
	    response << "Name: #{student['name']}<br>"
	    response << "Age: #{student['age']}<br>"
	    response << "Campus: #{student['campus']}<br><br>"
	  end
	  response
	end
end

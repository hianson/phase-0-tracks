# 'Create something awesome'
# We don't know what to make, so we're just going to make random parts of something useful
# Be able to:
# Create user login data
# Retrieve user login data
# Manipulate user login data
# Provide access to information with user authentication
# Create, retrieve, manipulate information based on user authentication

require 'sqlite3'
awesome_db = SQLite3::Database.new("awesome.db")

# BCT

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	3.0.0

* System dependencies
	git
        ruby 3.0.0
        rails 7.0.3
        postgresql 12.11
        gem
        bundler

* Configuration
	=> sudo -u postgres psql

        => create user <current_user_name> with encrypted password 'password';

        => alter role <current_user_name> superuser createrole createdb;

* Database creation
	=> rails db:create

* Database initialization
	=> rails db:migrate

* How to run the application
	=> rails s -p 3000
	
* Services (job queues, cache servers, search engines, etc.)
	-

* Deployment instructions

	=> Clone the repository

		=> git clone https://github.com/NeelaveniT/BCT.git

	=> Change directory to BCT

		=> cd BCT

	=> Install the gems  
	
		=> bundle install

	=> Create the database
		
		=> rails db:create

	=> Migrating to create the tables
	
		=> rails db:migrate
	
	=> To run the application

		=> rails s -p 3000	

	=> To add the user by api
		=>  curl -H "Content-Type: application/json" -X POST http://127.0.0.1:3000/api/v1/users/add -d '{"name":"neela", "email":"neela@gmail.com", "gender":"female", "status":"inactive"}'

	=> To view the user using api
		=> curl -H "Content-Type: application/json" -X GET http://127.0.0.1:3000/api/v1/users/view

		=> Using url : access 
			http://127.0.0.1:3000/api/v1/users/view

	=> To delete the user using api
		=> curl -H "Content-Type: application/json" -X GET http://127.0.0.1:3000/api/v1/users/delete?id=2

		 		
	=> To access the UI 
		=> http://127.0.0.1:3000/api/v1/users/index

		=> There will be button for add, edit, delete and view user.
		=> By clicking add, can add the user
		=> By clicking edit, can edit the user
		=> By clicking delete, can delete the user
		=> By clicking view, can view the list of the users

	 

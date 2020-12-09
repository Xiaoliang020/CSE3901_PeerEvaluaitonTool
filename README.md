# README

## The DeathWishers Project 6

### Peer Evaluation Tool

This Ruby on Rails application is a Peer Evaluation Tool that allows students to create accounts and submit evaluations for their teammembers for different projects in a work/class environment. The administrator/faculty can assign students multiple groups and projects throughout the semester and is able to govern the evaluations and grade the teams accordingly.

### Setup

###### Required Applications

- Web Browser (Google Chrome, Mozilla Firefox, Microsoft Edge, Safari)
- Rails 6.0.3.4 (Requires the latest JavaScript runtime and the Yarn package manager)
- Ruby (Specifically rbenv 1.1.2)

###### Gems to Install

- rails 6.0.3.4
- sqlite3 1.4.2
- puma 4.3.5
- bcrypt 3.1.13
- bootstrap-sass 3.4.1
- sass-rails 6.0.0
- webpacker 4.2.2
- turbolinks 5.2.1
- jbuilder 2.10.0
- bootsnap 1.4.6

### Running the rails server

Pull the project from the repository and open the project directory in command line. Run '$bundle install' to install the gem dependencies from the gemfile. Next, run 'rails db:migrate' in the terminal to run the required migrations and fill up the database. Once this is done, run "$rails server" in the terminal and wait for Puma to boot up. Then, open your web browser and navigate to localhost:3000 to view the rails application.

### Database

- Students
- Groups
- Projects
- Evaluations

### Contributors

- Xioliang Chen
- Kevin Chen
- Rahul Reddy
- Salil Monga
- Miles Lingdren

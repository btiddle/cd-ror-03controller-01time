| | |
|:---------------|:-------------------|
|**Domain** | Coding Dojo (cd)|
|**Areas of Study** | Ruby on Rails (ror)<br> Understanding Rails - Controllers and Views (03controller)|
|**Assignment**| Time Display (01time)|
|**Repository** | cd-ror-03controller-01time |
<br>

<pre><textarea>

===============
#1: Start project
===============

# Create new project
rails new time-display

# Change to new directory
cd time-display

edit> Gemfile
  - Uncomment: gem 'bcrypt'  # Using bcrypt (3.1.7)
  - Add: gem 'hirb'          # Using hirb (0.7.2)
bundle install

===============
#2: Create models/tables
===============

NA

===============
#3: Create controller
===============

rails g controller Times main 

===============
#4: Edit controller 
===============

class TimesController < ApplicationController
  def main
    time = Time.now
    @time = time.strftime("%A %B %d, %Y")
    @time2 = time.strftime("%I:%M:%S %P")
  end
end

===============
#5: Edit view
===============

<h3>Current time and date on page refresh:</h3>
<div>
    <p> <%= @time %></p><br>
    <p> <%= @time2 %></p>
</div>

===============
#5: Start server 
===============

rails server

===============
#6: Load application in browser
===============

http://localhost:3000/times/main

</pre>

# Q0: Why is this error being thrown?
Error is being thrown because we haven't created a Pokemon model which the homecontroller references. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon are appearing by calling the database/model that stores the pokemon. The common factor between these appearing pokemon is that they don't belong to a trainer_id because it is null.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This shows and creates a button the screen which when selected creates a patch request to capture_path. The capture_path goes to the method we created in pokemons called capture to grab the id from the parameters in order to reference the pokemon on the screen and set its owner/trainer to the current trainer. 

# Question 3: What would you name your own Pokemon?
I would name my pokemon based on the noise it makes. for example pikachu would be renamed to 'pikapi'

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a trainer_path to the current path to ensure that we remain on the current trainer's pokemon page. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://github.com/tracylam/proj1

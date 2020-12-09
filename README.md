A simple web app communicatable by HTML and JSON API.
Get Index or Get specific Kitten via API


[Project Description here](https://www.theodinproject.com/courses/ruby-on-rails/lessons/kittens-api)

Some thoughts:

I accidentally used Scaffold, which did most of the work for me. 
I notice that Json request works without any respond_to call in \#index and \#show. This makes me think that Rails is infering the reponse. When I added a \#to_json method to only return certain info on Kittens, Rails did not recognize this until I added the \#respond_to call.

I also figured out how to send a post request through the IRB and was met appropriately with a 422 error.

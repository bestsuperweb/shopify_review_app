# 1. Create ability to receive & store reviews for particular products
# from within the admin panel 
	#Create a new vendor once they're logged into the store; 

#March 25 - begin writing tests - need to figure out how to write tests testing an external api
#Should probably delete Vendor model and use only Shop for simplicity...

#ERROR CHECKING


class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

##API Information

Here are the __endpoints__ based on actions:

* To __list all users__:
  * (GET) __/api/v1/users__

* to __view all contacts(for a specific user__):
	* (GET) __/api/v1/users/[:id]/contacts__
	* Replace [:id] with the id of the user whos contacts you wish to view

* To __create a new user__:
  * (POST) __/api/v1/users__ 
  * Data: user[:email], user[:password], user[:password_confirmation]

* To __view a particular user__:
	* (GET)  __api/v1/users/[:id]__
	* Replace [:id] with the id of the user you wish to view 

* To __edit existing user__:
  * (PATCH) __/api/v1/users/:id__
  * Replace :id with the id of the user you wish to update
  * Data: user[:email], user[:password], user[:password_confimation]  
  
* To __delete__ existing contact:
  * (DELETE) __/api/v1/contacts/:id__
  * Replace :id with the id of the contact you wish to delete
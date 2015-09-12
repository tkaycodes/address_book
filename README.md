##API Information

Here are the __endpoints__ based on actions:

* To __view__ all contacts(for all users):
  * (GET) __/api/v1/contacts__

* to __view__ all contacts(for a specific user):
	* (GET) __api/v1/users/[:id]/contact
	* Replace [:id] with the id of the user whos contacts you wish to view

* To __create__ new contact:
  * (POST) __/api/v1/contacts__ 
  * Data: contact[:first_name], contact[:last_name], contact[:email], contact[:phone_number]

* To __edit__ existing contact:
  * (PATCH) __/api/v1/contacts/:id__
  * Replace :id with the id of the contact you wish to update
  * Data: contact[:first_name], contact[:last_name], contact[:email], contact[:phone_number]
  
  
* To __delete__ existing contact:
  * (DELETE) __/api/v1/contacts/:id__
  * Replace :id with the id of the contact you wish to delete
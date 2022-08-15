User.create(first_name: "Mary", last_name: "Wilson", gender: "she/ her", occupation: "lawyer")
User.create(first_name: "John", last_name: "Smith", gender: "he/ him", occupation: "accountant")
User.create(first_name: "Betty", last_name: "Anderson", gender: "she/ her", occupation: "chef")

Todo.create(body: "Buy stocks.", importance: 9, user_id: 1)
Todo.create(body: "Learn yoga.", importance: 9, user_id: 2)
Todo.create(body: "Sort socks.", importance: 9, user_id: 3)
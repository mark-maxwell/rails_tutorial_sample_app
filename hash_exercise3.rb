# Exercise 3 - Hash exercise (ran in rails console)

person1 = { first: "John", last: "Test" }
person2 = { first: "Jane", last: "Test" }
person3 = { first: "Zack", last: "Test" }

params = { father: person1, mother: person2, child: person3 }

# params[:father][:first] - should output: "John"
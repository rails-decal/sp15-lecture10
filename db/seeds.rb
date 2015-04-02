User.create! name: "Sam", email: "sam@sam.com", password: "password"
User.create! name: "Howard", email: "howard@howard.com", password: "password"
User.create! name: "Jessica", email: "jessica@jessica.com", password: "password"

Quit.create! text: "I quit smoking!", user: User.find(1)
Quit.create! text: "I'll quit procrastinating tomorrow!", user: User.find(2)

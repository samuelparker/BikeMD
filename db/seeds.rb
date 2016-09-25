require 'faker'

User.destroy_all
Solution.destroy_all
Symptom.destroy_all
Tool.destroy_all

5.times do 
  User.create(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: "password"
    )
end

Category.create(name: "wheel and tire")
Category.create(name: "chain and shifting")
Category.create(name: "braking")

Tool.create(name: "tire lever")
Tool.create(name: "small adjustable wrench")
Tool.create(name: "tire lever")
Tool.create(name: "phillips head screwdriver")
Tool.create(name: "flat head screwdriver")
Tool.create(name: "allen wrench (hex key)")
Tool.create(name: "chain oil")
Tool.create(name: "tire pump")
Tool.create(name: "chain breaker")
Tool.create(name: "spoke wrench")

Symptom.create(description: "I have a flat tire").update(category_id: 1)
Symptom.create(description: "I hear a creaking sound from the wheel").update(category_id: 1)
Symptom.create(description: "My chain fell off").update(category_id: 2)
Symptom.create(description: "I hear a grinding sound when I pedal").update(category_id: 2)
Symptom.create(description: "I can't shift into certain gears").update(category_id: 2)
Symptom.create(description: "I hear a squealing sound when braking").update(category_id: 3)
Symptom.create(description: "One pad is rubbing on the wheel").update(category_id: 3)

7.times do 
  Solution.create(est_time: rand(5..60),
          difficulty_level: rand(1..5),
                      body:

<<-EXITTEXT
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.
EXITTEXT
            )
end

Solution.all.each { |solution| solution.tools << Tool.all.sample }
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample
Solution.all.sample.tools << Tool.all.sample

solution_id = 0

Symptom.all.each do |symptom| 
  solution_id += 1
  symptom.update(solution_id: solution_id)
end
















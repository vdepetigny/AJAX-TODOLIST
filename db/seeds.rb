require 'faker'

# 3.times do
#   my_category = Category.create(title: Faker::Book.genre)
#   3.times do
#     my_task = Task.new(title: Faker::Book.title,
#                       deadline: Faker::Date.forward(23),
#                       image: Faker::Avatar.image)
#     my_task.category = my_category
#     my_task.save
#   end
# end

50.times do
  Email.create(object: Faker::Company.catch_phrase, body: Faker::Lorem.paragraph_by_chars(2000, false))
end


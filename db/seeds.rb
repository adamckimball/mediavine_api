3.times do
  Blog.create(name: Faker::Company.name)
end

3.times do |number|
  first_name = Faker::Name.first_name
  User.create(name: "#{first_name} #{Faker::Name.last_name}", email: "#{first_name}@test.com")
end

10.times do
  Post.create(user_id: User.all.sample.id, blog_id: Blog.all.sample.id, title: Faker::Hipster.word, description: Faker::Hipster.paragraph)
end

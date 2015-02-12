25.times do
  Message.create(
    username: Faker::Internet.user_name,
    message: Faker::Lorem.paragraphs.join("\n")
  )
end

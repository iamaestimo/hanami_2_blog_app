require 'faker'

posts = HanamiBlogApp::App['application.repositories.post_repo']

20.times do |post|
  posts.create(title: Faker::Name.name, body: Faker::Lorem.paragraph(sentence_count: 2))
end

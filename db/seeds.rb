puts "Clearing the Article Database"
Article.destroy_all

puts "Generating Articles"
10.times do
  temp_article = Article.create( title: Faker::Name.name,
                  content: Faker::Verb.base)
  puts "Generated #{temp_article.title}"
end

puts "Generated #{Article.count} articles"

Factory.define :document do |x|
  x.body {Faker::Lorem.words(50).join(' ')}
  x.name {Faker::Name.first_name}
  x.original_url {Faker::Internet.domain_name}
end

Factory.define :summary do |x|
  x.body {Faker::Lorem.words(5).join(' ')}
  x.association :document
end

Factory.define :summary_vote do |x|
  x.association :summary
  x.score {rand(10)}
end
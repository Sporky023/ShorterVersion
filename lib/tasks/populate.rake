namespace :db do
  
  
  task :populate => :environment do
    
    Document.populate 20 do |document|
      
      document.name = Faker::Lorem.words(2).join(' ')
      document.body = Faker::Lorem.words(1000).join(' ')
      
    end
    
    
  end
  
  
  
end
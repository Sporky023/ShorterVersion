namespace :db do
  
  
  task :populate => :environment do
    
    Document.connection.execute("truncate table documents")
    Summary.connection.execute("truncate table summaries")
    
    Document.populate 20 do |document|
      
      document.name = "Document Title "+Faker::Lorem.words(2).join(' ')
      document.body = Faker::Lorem.words(1000).join(' ')
      document.original_url = Faker::Internet.domain_name
      
    end
    
    Document.all.each do |d|
      
      Summary.populate 3 do |s|
        
        s.document_id = d.id
        s.body = Faker::Lorem.words(100).join(' ')
        
      end
      
    end
    
    
  end
  
  
  
end
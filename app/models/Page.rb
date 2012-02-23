class Page
  include MongoMapper::Document
  
  key :slug, String, :unique => true, :required => true
  key :title, String, :required => true
  key :author, String, :required => true
  key :status, String, :required => true
  key :publish_at, Time, :required => true
  key :body, String, :required => true
  timestamps!
  userstamps!
end

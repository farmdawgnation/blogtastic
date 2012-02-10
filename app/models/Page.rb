class Page
  include MongoMapper::Document
  
  key :slug, String, :unique => true, :required => true
  key :title, String, :required => true
  key :author, String, :required => true
  key :status, String, :required => true
  key :publish_at, Time, :required => true
  many :page_versions
  timestamps!
  userstamps!
end

class PageVersion
  include MongoMapper::EmbeddedDocument
  
  key :body, String, :required => true
  timestamps!
end

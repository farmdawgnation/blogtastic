class Blog
  include MongoMapper::Document
  
  key :slug, String, :unique => true, :required => true
  key :title, String, :required => true
  key :author, String, :required => true
  key :status, String, :required => true
  key :publish_at, Time, :required => true
  key :body, String, :required => true
  many :comments
  timestamps!
  userstamps!
end

class Comment
  include MongoMapper::EmbeddedDocument
  
  key :published, Boolean, :required => true
  key :body, String, :required => true
  one :comment_author
end

class CommentAuthor
  include MongoMapper::EmbeddedDocument
  
  key :name, String, :required => true
  key :email, String, :required => true
  key :url, String, :required => true
end

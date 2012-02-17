class User
  include MongoMapper::Document
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  
  key :username, String
  key :email, String
  key :encrypted_password, String
  key :password_salt, String
  key :admin, Boolean, :default => false
  key :editor, Boolean, :default => false
  key :active, Boolean, :default => true
  timestamps!
end

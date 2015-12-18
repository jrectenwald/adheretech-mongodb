class Patient
  include MongoMapper::Document

  key :name, String

  many :bottles
  many :prescriptions
  
end

class Prescription
  include MongoMapper::EmbeddedDocument

  key :name, String
  key :duration, Integer
  key :quantity, Integer

end
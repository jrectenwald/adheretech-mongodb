class Pill
  include MongoMapper::EmbeddedDocument

  key :name, String
  key :mass, Float

end

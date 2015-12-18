class Bottle
  include MongoMapper::EmbeddedDocument

  key :filled_date, DateTime
  key :refill_date, DateTime
  key :battery_level, Float

  many :pills

end

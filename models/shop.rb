# vi:sw=2:ts=2:et:ft=ruby

class Shop
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :address, String
  property :phone, String
  property :twitter, String

  has n, :coffees
  has n, :baristas
  has n, :customers
end


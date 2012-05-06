# vi:sw=2:ts=2:et:ft=ruby

class Coffee
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :shops
  has n, :specialists, :through => :baristas
end


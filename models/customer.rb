# vi:sw=2:ts=2:et:ft=ruby

class Customer
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  belongs_to :shop

  has n, :customers
end


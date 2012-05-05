# vi:sw=2:ts=2:et:ft=ruby

class Review
  include DataMapper::Resource

  property :id, Serial
  property :description, Text

  belongs_to :customer

  has n, :comments
end


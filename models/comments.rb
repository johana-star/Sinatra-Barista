# vi:sw=2:ts=2:et:ft=ruby

class Comment
  include DataMapper::Resource

  property :id, Serial
  property :description, Text

  belongs_to :review
  belongs_to :barista
end


# vi:sw=2:ts=2:et:ft=ruby

class Specialty
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :baristas
end


class Author
  include Mongoid::Document
  field :name, type: String
  key :name, type: String

  # same as has_many
  references_many :articles
end

class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :published_on, type: Date

  validates_presence_of :name

  # same as 'has_many'
  embeds_many :comments

  # same as 'belongs_to'
  refenced_in :author
end

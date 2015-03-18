class Request1
  include Mongoid::Document
  field :when, type: Date
  field :where, type: String
  field :what, type: String
  field :negotiable, type: Boolean
  field :price, type: Float
end

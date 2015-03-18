class Request
  include Mongoid::Document
  #field :name, type: String
  #field :content, type: String
  #field :published_on ,type: Date
  field :when , type: Date
  field :where, type: String
  field :product_where, type:String 
  field :reference_location, type:String
  field :what, type: String
  field :negotiable, type: Boolean
  field :Upper_price_range, type: Float
  field :lower_price_range, type: Float
  field :typee, type: String
  field :category, type: String
  field :tags, type:String
  field :status, type:String
end

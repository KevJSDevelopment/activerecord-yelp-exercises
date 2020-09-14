class Dish < ActiveRecord::Base
    belongs_to :restaurants
    has_many :dish_tags
    has_many :tags, through: :dish_tags
end
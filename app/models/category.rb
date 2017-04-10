class Category < ActiveRecord::Base
    has_many :resources, through: :resource_categories
    has_many :resource_categories
end

class Resource < ActiveRecord::Base
    has_many :categories, through: :resource_categories
    has_many :resource_categories

    has_many :services, through: :resource_services
    has_many :resource_services

    has_many :addresses
end

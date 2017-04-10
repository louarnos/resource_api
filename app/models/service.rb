class Service < ActiveRecord::Base
    has_many :resources, through: :resource_services
    has_many :resource_services
end

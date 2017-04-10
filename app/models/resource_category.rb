class ResourceCategory < ActiveRecord::Base
  belongs_to :resource, inverse_of: :resource_categories
  belongs_to :category, inverse_of: :resource_categories
end

class ResourceService < ActiveRecord::Base
  belongs_to :resource, inverse_of: :resource_services
  belongs_to :service, inverse_of: :resource_services
end

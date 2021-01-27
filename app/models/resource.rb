class Resource < ApplicationRecord 
    belongs_to :admin, :optional => true
end

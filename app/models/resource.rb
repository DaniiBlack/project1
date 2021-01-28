class Resource < ApplicationRecord 
    belongs_to :admin, :optional => true

    def self.search(search)
        if search
            @resources = Resource.all.where(resource_type: search)
        else
            @resources = Resource.all
        end
    end
    
end

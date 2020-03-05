class Car < ActiveRecord::Base
    has_many :garages
    has_many :users, through: :garages
end
            
            
            

class Book < ActiveRecord::Base
    belongs_to :reader 
    belongs_to :author
end
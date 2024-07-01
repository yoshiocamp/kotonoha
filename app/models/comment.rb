class Comment < ApplicationRecord
  belongs_to :kotoba  
  belongs_to :user  
end

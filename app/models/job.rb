class Job < ApplicationRecord


#belongs_to :employer
belongs_to :user
has_one_attached :image, :dependent => :destroy
end
	
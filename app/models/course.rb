class Course < ActiveRecord::Base

  # Relationships
  has_many :sections

end

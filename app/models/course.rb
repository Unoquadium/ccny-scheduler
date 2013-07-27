class Course < ActiveRecord::Base

  # Relationships
  has_many :sections

  # Helpers
  def to_s
  	"#{prefix} #{number} - #{title}"
  end

end

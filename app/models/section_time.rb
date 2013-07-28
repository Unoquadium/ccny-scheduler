class SectionTime < ActiveRecord::Base

  belongs_to :section

  def online?
  	if online
  		"Yes"
  	else
  		"No"
  	end
  end

end

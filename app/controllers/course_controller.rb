class CourseController < ApplicationController

	# view a course
	def show

		# get course
		if Course.exists?(params[:id])
			@course = Course.find(params[:id])
		else
			# todo: redirect somewhere else with an error
		end

		# get sections
		@sections = @course.sections

	end

end
class CourseController < ApplicationController

	# all courses
	def index

		# get all courses
		@courses = Course.all

	end

	# view a course
	def show

		# get course
		@course = get_course(params[:id])
		if @course.nil?
			return redirect_to course_index_path
		end

		# get sections
		@sections = @course.sections

	end

	private

		# course look-up
		def get_course(id)
			if Course.exists?(id)
				Course.find(id)
			else
				nil
			end
		end

end
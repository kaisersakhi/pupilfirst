module Courses
  class ApplyPresenter < ApplicationPresenter
    def initialize(view_context, course)
      @course = course
      super(view_context)
    end

    def page_title
      "Enroll to #{@course.name} | #{current_school.name}"
    end

    private

    def props
      {
        authenticity_token: view.form_authenticity_token,
        course_name: @course.name,
        course_description: @course.description
      }
    end
  end
end

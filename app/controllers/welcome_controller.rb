class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html { render "welcome/index", layout: 'layouts/application2' }
    end
  end

  def about
  	@about = About.first
  end

  def partners
  	@partners = Partner.all
  end

  def projects
    @projects = Project.all
  end

  def members
  	@members = Member.all
  end

  def courses
    @courses = courses.all
  end

  def see_more
    @course = Course.find(params[:id])
  end

  def current_courses
    @courses = Course.all
  end
  
end

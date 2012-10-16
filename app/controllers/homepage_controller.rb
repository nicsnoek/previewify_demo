class HomepageController < ApplicationController

  before_filter :preview_or_published

  def preview_or_published
    #This could be a function of current user, hostname, a parameter etc.
    show_preview(params.has_key?(:preview))
  end


  def show
    @articles = Article.most_recent
  end

end

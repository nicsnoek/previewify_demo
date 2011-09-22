class HomepageController < ApplicationController

  before_filter :preview_or_published

  def maybe_some_function_of_current_user_or_hostname?
    params.has_key?(:preview) # But in this case just a simple parameter
  end

  def preview_or_published
      show_preview(maybe_some_function_of_current_user_or_hostname?)
  end


  def show
    @articles = Article.most_recent
  end

end

class VersionsController < ApplicationController

  before_filter :show_preview

  def show
    @draft_article = Article.find(params[:article_id])
    @article = @draft_article.version(params[:id])
  end

  def revert
    @draft_article = Article.find(params[:article_id])
    @draft_article.revert_to_version_number!(params[:id])
    redirect_to article_url(@draft_article)
  end

end

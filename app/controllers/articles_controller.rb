class ArticlesController < ApplicationController

  before_filter :show_preview

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.create(params[:article])
    redirect_to(edit_article_path(@article))
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      redirect_to(@article, :notice => 'Article successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to(articles_url)
  end

  def publish
    @article = Article.find(params[:id])
    @article.publish!
    flash[:notice] = 'Article successfully published.'
    redirect_to :action => :index
  end

  def take_down
    @article = Article.find(params[:id])
    @article.take_down!
    flash[:notice] =  'Article successfully taken down.'
    redirect_to :action => :index
  end

end

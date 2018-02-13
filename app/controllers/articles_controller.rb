class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
     @articles = Article.new
  end

  def create
    @articles = Article.new(article_params)
    @articles.save
  end

  def edit
  end

  def show
     @articles = Article.find(params[:id])
  end

  def update
  end

  def destroy
  end

   private

  def task_params
    params.require(:article).permit(:title, :content )
  end

end

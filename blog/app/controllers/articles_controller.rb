class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

def new
  @articles = Article.new
end

def create
  @articles = Article.new(title: "...", body: "...")

  if @article.save
    redirect_to @articles
  else
    render :new
  end
end

private
def article_params
  params.require(:article).permit(:title,:body)
end

end

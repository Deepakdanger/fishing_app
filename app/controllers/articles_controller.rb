class ArticlesController < ApplicationController
    before_action :authenticate_user!

    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
       
    def new
        @article = Article.new
    end

    def create
        @article = current_user.articles.new(article_params)
    
        if @article.save
          redirect_to @article , notice: 'Article is successfully created'
        else
          render :new , notice: 'Failed to create article'
        end
    end

    private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
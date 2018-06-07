class ArticlesController < ApplicationController 

  # index show以外を見るには認証が必須
  http_basic_authenticate_with name: "dhh", password: "secret",
    except: [:index, :show]

  def index
    @articles=Article.all
  end

  def show
    @article = Article.find(params[:id])
    
  end

  def new
    @article = Article.new
  end

  def edit #edit.html.erbに対応
    @article = Article.find(params[:id])
  end
  
  def create
  	@article = Article.new(article_params)
  	
  	if @article.save
  	  redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article=Article.find(params[:id]) #既存の記事を取得

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit' #edit画面を描画
    end
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
  
end

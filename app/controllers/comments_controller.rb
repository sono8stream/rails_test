class CommentsController < ApplicationController

    #認証したユーザーのみコメントを削除可能
    http_basic_authenticate_with name:"dhh", password: "secret", only: :destroy

    def create
        @article=Article.find(params[:article_id])
        @comment=@article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy # 記事を検索し、記事内の指定したidをもつコメントを削除
        @article=Article.find(params[:article_id])
        @comment=@article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
    
end

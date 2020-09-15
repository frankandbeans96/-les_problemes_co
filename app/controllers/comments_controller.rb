class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @article = Article.find(params[:article])
  end

  def create
    @comment = Comment.new(comment_params)
    @article = Article.find(params[:article_id])
    @comment.article = @article
    if @comment.save
      redirect_to article_path(params[:article_id], anchor: "comments-section"), notice: "Ton commentaire est en attente d'approbation"
    else
      redirect_to article_path(params[:article_id], anchor: "comments-section"), alert: "Le nom et le contenu est obligatoire pour valider le commentaire !"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment, :email)
  end
end

class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

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

  def approve
    @comment = Comment.find(params[:id])
    @comment.update(approved: true, banned: false)
    redirect_to comments_path
  end

  def ban
    @comment = Comment.find(params[:id])
    @comment.update(banned: true, approved: false)
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment, :email)
  end
end

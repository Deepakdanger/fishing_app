class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      redirect_to articles_path, notice: 'You voted on article.'
    else
      redirect_to articles_path, alert: 'You cannot vote this article.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to articles_path, notice: 'You unvoted .'
    else
      redirect_to articles_path, alert: 'You cannot unvote that you did not vote before.'
    end
  end
end

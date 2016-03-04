class CommentsController < ApplicationController
	def create
    @haunt = Haunt.find(params[:haunt_id])
    @comment = @haunt.comments.create(params[:comment])
    redirect_to haunt_path(@haunt)
  end
end

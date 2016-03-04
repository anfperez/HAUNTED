class CommentsController < ApplicationController
	def create
	    @haunt = Haunt.find(params[:haunt_id])
	    @comment = @haunt.comments.create(comments_params)
	    redirect_to haunt_path(@haunt)
    end

    private

    def comments_params
    	params.require(:comment).permit(:commenter, :body)
    end
end

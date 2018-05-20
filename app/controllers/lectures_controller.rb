class LecturesController < InheritedResources::Base
  def upvote 
    @link = Lecture.find(params[:id])
    @link.upvote_by current_user
    redirect_to back
  end 
  def downvote
    @link = Lecture.find(params[:id])
    @link.downvote_by current_user
    redirect_to back
  end
  

  private
    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end

        

end


class CommentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create!(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to project_path(@project) }
        format.js
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end

  def update
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to project_path(@project, @comment)
    else
      render :edit
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end

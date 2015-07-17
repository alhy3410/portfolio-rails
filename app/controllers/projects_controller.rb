class ProjectsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]


  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.new(project_params)
    if @project.save
      redirect_to category_path(@category)
    else
      redirect_to :back
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to category_path(@category)
  end

  def update
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to category_path(@category, @project)
    else
      render :edit
    end
  end


  private
  def project_params
    params.require(:project).permit(:name, :description)
  end

end

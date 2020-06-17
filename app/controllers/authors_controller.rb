class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "Author successfully created"
      redirect_to author_path(@author)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @author = Author.find(params[:id])
  end
  
  def update
    @author = Author.find(params[:id])
      if @author.update_attributes(author_params)
        flash[:success] = "Author was successfully updated"
        redirect_to author_path(@author)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  end

  def show
    puts "$$$$$$$$ THIS IS SHOW $$$$$$$"
    @emails = Email.all
    @email = Email.find(params[:id])
    @email.update_attribute(:read, [true])
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def destroy
    @emails = Email.all
    Email.find(params[:id].to_i).destroy
    respond_to do |format|
      format.js {render layout: false}
    end
  end

end


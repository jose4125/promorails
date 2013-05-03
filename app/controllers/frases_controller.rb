class FrasesController < ApplicationController
  def new
    @frase = Frase.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @frase = Frase.new(params[:frase]) 

    respond_to do |format|
      if @frase.save
        format.html { redirect_to root_url, notice: 'la frase fue ingresada' }
      else
        format.html { render action: "new" }
      end
    end
  end
end

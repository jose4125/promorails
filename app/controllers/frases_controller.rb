class FrasesController < ApplicationController

  def new
    @frase = Frase.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    
    #este constructor funciona para has_many 
    #@frase = current_user.build_frases(params[:frase])

    #este constructor funciona para has_one
    @user = current_user
    @frase = Frase.create(params[:frase])
    @user.frase = @frase

    #@frase.update_attributes(valida: false)
    #@frase.save



    respond_to do |format|
      if @frase.save
        format.html { redirect_to root_url, notice: 'la frase fue ingresada' }
      else
        format.html { render action: "new" }
      end
    end
  end
end

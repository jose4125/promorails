class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_cedula(params[:session][:cedula])
    puts user.nombre

    if user && user.authenticate(params[:session][:cedula])

      login user
      flash[:success] = 'estas logueado'
      redirect_to new_frase_path
    else
      #flash.now[:error] = 'no coincide el nombre o ña contraseña'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'secion cerrada'
  end
end

module FrasesHelper
  
  def user_frase?
    @frase = Frase.find_by_user_id( current_user.id)
  end

  def estado_frase
    ( @frase.valida ) ? 'correcta' : 'incorrecta'
  end
end

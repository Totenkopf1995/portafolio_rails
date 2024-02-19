class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end

  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      redirect_to contactos_path, notice: "¡#{@contacto.nombre}, Gracias por tu mensaje!"
    else
      render :new
    end
  end

  private

  def contacto_params
    params.require(:contacto).permit(:nombre, :email, :celular, :mensaje)
  end
end

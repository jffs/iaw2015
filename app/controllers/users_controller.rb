class UsersController < ApplicationController
  

  def new
    @usuario = User.new;
  end

  def index
    @usuario=User.all;
  end

  def update
    @usuario = User.find(params[:id])

    @usuario.update(params.require(:user).permit([:nombre, :apellido, :nick, :contrasena, :correo, :telefono, :sexo, :foto]))
    if @usuario.save
      redirect_to @usuario, :notice => "Usuario editado exitosamente"
    else
      redirect_to :back, :notice => "Error al editar usuario"
    end
  end

  def show
    @usuario=User.find(params[:id])
  end

  def edit
    @usuario=User.find(params[:id])
  end

  def create
    @usuario = User.create(params.require(:user).permit([:nombre, :apellido, :telefono, :correo, :nick, :contrasena,:foto]))
    if @usuario.save
      redirect_to @usuario, :notice => "Usuario creado exitosamente"
    else
      redirect_to :back, :notice => "Error al creado usuario"
    end
  end

  def destroy
    @usuario=User.find(params[:id])
    t=@usuario
    t.destroy
    redirect_to users_path
  end
end

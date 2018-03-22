class Trainer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pokemons

  def index
  	@trainers = Trainer.all
  end

  def show
  	@trainer = Trainer.find(params[:id])
  	@pokemons = Pokemon.where(trainer_id: params[:id])
  end

end

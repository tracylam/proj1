class PokemonController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer_id: current_trainer.id)
		@pokemon.save
		redirect_to '/'
	end 

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health > 0
			@pokemon.save
		else
			@pokemon.destroy
		end
		redirect_to trainer_path(current_trainer.id)
	end

	def new
		@pokemon = Pokemon.new

	end

	def create
		@pokemon = Pokemon.create(pokemon_params)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.level = 1
		@pokemon.health = 100
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
		end
	end

	private

	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end


end

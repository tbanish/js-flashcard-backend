class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.all
    render json: DeckSerializer.new(decks)
  end

  private

  def deck_params
    params.require(:deck).permit(:subject)
  end
end

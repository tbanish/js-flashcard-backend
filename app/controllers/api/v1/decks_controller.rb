class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.all
    render json: DeckSerializer.new(decks)
  end

  def show
    deck = Deck.find_by(id: params[:id])
    render json: DeckSerializer.new(deck)
  end

  def create
    deck = Deck.new(deck_params)
    if deck.save
      render json: deck, status: :accepted
    else
      render json: { errors: deck.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    deck = Deck.find_by(id: params[:id])
    deck.update(deck_params)

    if deck.save
      render json: deck, status: :accepted
    else
      render json: { errors: deck.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def deck_params
    params.require(:deck).permit(:subject)
  end
end

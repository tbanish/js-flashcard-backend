class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all
    render json: CardSerializer.new(cards)
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: CardSerializer.new(card)
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: card, status: :accepted
    else
      render json: { errors: card.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer, :deck_id)
  end
end

class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all
    render json: CardSerializer.new(cards)
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer, :deck_id)
  end
end

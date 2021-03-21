class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :question, :answer, :deck_id, :deck
end

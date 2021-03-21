class DeckSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subject, :cards
end

class TestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :duration, :score, :correct_ids, :incorrect_ids, :deck_id, :created_at
end

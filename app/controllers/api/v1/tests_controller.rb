class Api::V1::TestsController < ApplicationController
  def index
    tests = Test.all
    render json: TestSerializer.new(tests)
  end

  def create
    test = Test.new(test_params)

    if test.save
      render json: test, status: :accepted
    else
      render json: { errors: test.errors.full_messages }
    end
  end

  private

  def test_params
    params.require(:test).permit(:duration, :score, :correct_ids, :incorrect_ids, :deck_id)
  end
end

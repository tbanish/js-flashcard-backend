class Api::V1::TestsController < ApplicationController
  def index
    tests = Test.all
    render json: TestSerializer.new(tests)
  end
end

class WelcomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)
  end
end

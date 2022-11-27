class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :map, :aircraft, :index, :sign_up]

  def home
  end
end

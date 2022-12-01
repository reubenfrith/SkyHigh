class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :sign_up]

end

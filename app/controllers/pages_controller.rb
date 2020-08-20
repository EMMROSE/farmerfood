class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin

  def home
    @products = Product.all
  end

  def admin
  end
end

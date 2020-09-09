class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def manifeste
  end

  def contact
  end
end

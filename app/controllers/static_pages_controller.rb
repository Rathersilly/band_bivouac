class StaticPagesController < ApplicationController
  def home
    @bands = Band.all
  end

  def help
  end

  def about
  end

  def contact
  end
end

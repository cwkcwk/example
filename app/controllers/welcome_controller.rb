class WelcomeController < ApplicationController

  def index
    @sliders = Slider.active
  end

  def logistics
  end

  def contacts
  end

  def about
  end

  def production
  end
end

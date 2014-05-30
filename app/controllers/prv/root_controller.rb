class Prv::RootController < ApplicationController

  before_action :authenticate_user!
  layout 'prv'

end

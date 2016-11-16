class HomeController < ApplicationController
  def top
  	@notes = Note.all
  end
end

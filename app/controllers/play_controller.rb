class PlayController < ApplicationController
  def index
  end

  def male
  	@people = Person.where(sex: '0').order("RANDOM()").first(3)
  end

  def female
  	@people = Person.where(sex: '1').order("RANDOM()").first(3)
  end
  
end

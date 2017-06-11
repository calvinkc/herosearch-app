class HeroesController < ApplicationController

  def index
    @heroes = Hero.all
    # @heroes = []
    # api_heroes = Unirest.get("http://localhost:3000/api/v1/heroes.json").body
    # api_heroes.each do |api_hero|
    #   @heroes << Hero.new(api_hero)
    # end
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def new
  end

  def create
    @hero =  Unirest.post("http://localhost:3000/api/v1/heroes.json", 
      parameters:  {name: params[:name], 
                    power: params[:power], 
                    desc: params[:desc], 
                    job: params[:job]},
                    headers:{"Accept" => "application/json"}).body
    redirect_to hero_path(@hero['id'])
  end

  def destroy
    hero = Hero.find(params[:id])
    hero.destroy
    redirect_to heroes_path
  end

end

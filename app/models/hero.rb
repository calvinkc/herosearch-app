class Hero
   attr_accessor :id, :name, :power, :desc, :job

  def initialize(input_hash)
    @id = input_hash['id']
    @name = input_hash['name']
    @power = input_hash['power']
    @desc = input_hash['desc']
    @job = input_hash['job']
  end

  def name_with_desc
    "#{@name} #{@desc}"
  end

   def self.find(id)
     hero_hash = Unirest.get("http://localhost:3000/api/v1/heroes/#{id}").body
     Hero.new(hero_hash)
  end

  def self.all
    @heroes = []
    api_heroes = Unirest.get("http://localhost:3000/api/v1/heroes.json").body
      api_heroes.each do |api_hero|
      @heroes << Hero.new(api_hero)
    end
      @heroes # last 
  end

  def destroy
    Unirest.delete("http://localhost:3000/api/v1/heroes/#{id}.json", headers: {"Acccept" => "application/json"})
  end
end
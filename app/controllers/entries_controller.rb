class EntriesController < ApplicationController

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
    @entry = Entry.new
  end

  def create
    @place = Place.find_by({ "id" => params["id"] })
      @entry = Entry.new
      @entry["title"] = params["title"]
      @entry["description"] = params["description"]
      @entry["posted_on"] = params["posted_on"]
      @entry["place_id"] =params["place.id"]

    @entry.save
      redirect_to("/places/#{@place.id}")
    
    end
  end
end
  

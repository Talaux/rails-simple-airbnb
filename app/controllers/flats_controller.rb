class FlatsController < ApplicationController

def index
  @flats = Flat.all
end

def show
  @flats = Flat.find(params[:id])
end

def new
  @flats = Flat.new
end

def create
  @flat = Flat.new(flat_params)
  if @flat.save
    redirect_to flat_path(@flat)
  else
    render :new, status: :unprocessable_entity
  end
end

def update

end

def destroy
  @flat.destroy
  redirect_to flats_path, status: :see_other
end



def edit

end


end

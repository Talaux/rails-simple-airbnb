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
  if @flat.update(flat_params)
    redirect_to flat_path(@flat)
  else
    render :new, status: :unprocessable_entity
  end
end

def destroy
  @flat.destroy
end



def edit

end


end

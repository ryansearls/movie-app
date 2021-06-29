class ActorsController < ApplicationController
  
  def index 
    actors = Actor.all
    render json: actors.as_json
    Actor.order(age: :desc)
  end 
  
  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age])
      
    if  actor.save
        render json: { actor: actor }  
    else 
        render json: { errors: actor.errors.full_messages },
        status 418 
    end
  end
  
  def show
    input_value = params["id"]
    actor = Actor.find(input_value)
    render json: { actor: actor }
  end

  def update
    input_value = params["id"]
    actor = Actor.find(input_value)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"]
    actor.age = params["age"]
    
    if actor.save
      render json: { actor: actor.as_json }
    else
      render json: {errors: actor.errors.full_messages },
      status 418
    end   
  end

  def delete
    input_value = params["id"]
    actor = Actor.find(input_value)
    actor.destroy
    render json: { message: "file deleted" }
  end




end

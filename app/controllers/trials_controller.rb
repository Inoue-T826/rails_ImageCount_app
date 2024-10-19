class TrialsController < ApplicationController
 def create
    trial = Trial.new
    if trial.save
     render json: { status: 'success' }, status: :ok
    else
     render json: { status: 'error', errors: trial.errors.full_messages }, status: :unprocessable_entity
    end
 end
end

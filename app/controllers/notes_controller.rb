class NotesController < ApplicationController

  def index
    notes = Note.all
    render json: notes, include: [:user] 
  end

  def create
    note = Note.create!(note_params)
    render json: note
  end

  private

  def note_params
    params.require(:note).permit(:content, :title, :user_id)
  end
end

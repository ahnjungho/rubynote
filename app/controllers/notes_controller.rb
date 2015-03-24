class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @notes = Note.all
  end

  def new 
  end

  def create
    @note = Note.new(params.require(:note).permit(:body))
    @note.user = current_user
    @note.save
    redirect_to @note
  end

  def show
    @note = Note.find(params[:id])
  end
end

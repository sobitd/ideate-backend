class NotesController < ApplicationController
  # Get all the notes in the db
  get '/notes' do
    @notes = Note.all
    erb :'notes/index'
  end

  # after sumiting a new form
  post '/notes' do
  end

  # user to view form to add a new note

  get '/notes/new' do
    erb :'notes/new'
  end

  # Get one post
  get '/notes/:id' do
    # retrive requsted id and display
    @note = Note.find(params[:id])
    erb :'notes/show'
  end

  # update method for object with a given id
  get '/notes/:id/edit' do
  end

  # resubmition of the edited object after updating
  patch 'notes/:id' do
  end

  # deletion of an existing object
  delete '/notes/:id' do
  end
end

class NotesController < ApplicationController
  # Get all the notes in the db
  get '/notes' do
    @notes = Note.all
    erb :'notes/index'
  end

  # user to view form to add a new note

  get '/notes/new' do
    erb :'notes/new'
  end

  # Get one post
  get '/notes/:id' do
    # retrive requsted id and display
    @note = Note.find_by(id: params[:id])
    erb :'notes/show'
  end

  # after sumiting a new form
  post '/notes' do
    @note = Note.create(params)
    redirect "/notes/#{@note.id}"
  end

  # update method for object with a given id
  get '/notes/:id/edit' do
    @note = Note.find_by(id: params[:id])
    erb :"/notes/edit"
  end

  # resubmition of the edited form after updating
  patch 'notes/:id' do
    @note = Note.find_by(id: params[:id])
    @note.update(title: params[:title], content: params[:content])
    redirect "/notes/#{@note.id}"
  end

  # deletion of an existing object
  delete '/notes/:id' do
    
  end
end

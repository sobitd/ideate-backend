class NotesController < ApplicationController
  # Get all the notes in the db[READ]
  get '/notes' do
    @notes = Note.all
    erb :'notes/index'
  end

  # user to view form to add a new note[CREATE]

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

  # update method for object with a given id[UPDATE]
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

  # deletion of an existing object[DELETE]
  delete '/notes/:id' do
    @note = Note.find_by(id: params[:id])
    @note.destroy

    redirect '/notes'
  end
end

require_relative './config/environment'

use Rack::MethodOverride
use NotesController
run ApplicationController

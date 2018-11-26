Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'

  def index
    Student.all
  end

  def new
    Student.new(students: params[:first_name][:last_name])
  end

  def show
  end


end

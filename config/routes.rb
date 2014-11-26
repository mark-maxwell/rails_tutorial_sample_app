Rails.application.routes.draw do
  root 'static_pages#home'

  #Previous syntax below:

  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'

  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

end
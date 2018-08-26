Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/services', to: 'static_pages#services'
  get  '/testimonials', to: 'static_pages#testimonials'
end


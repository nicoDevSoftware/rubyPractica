Rails.application.routes.draw do
    get '/products/new', to: 'products#new', as: :new_product
    get '/products', to: 'products#index'
 #   
    get '/products/:id', to: 'products#show', as: :product
 #/products/:id es la direccion url del cliente :id es el id que nos va pasar por la url
 #         'products#show' la va resolver products con el metodo show es laa funciona que esta en controlador


end

class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
         @product = Product.find(params[:id]) 
    end

    def new 
        #este variable product lo que va hacer es crear un producto vacia para poder usarlo en 
        #el form de new.html.erb para que despues el usuario lo complete con los datos
        @product =  Product.new
    end



end
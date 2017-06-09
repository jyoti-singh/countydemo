ActiveAdmin.register Product do
  form(:html => { :multipart => true }) do |f|                         
    f.inputs do
      # f.input :product_type, :as => :select, :collection => [["Titan", "Titan"], ["Fastrack", "Fastrack"]]
      f.input :product_type, :as => :select, :collection => ["Titan","Fastrack","Sonata"]
      f.input :name
      end                         
    f.actions                         
  end
  controller do
    def create
      @product = Product.new(product_params)
      if @product.save
        flash[:notice] = "Product created successfully."
        redirect_to admin_product_path(@product)
      else
        render 'new'
      end
    end

    def update
      @product = Product.find(params[:id])
      if @product.update_attributes(product_params)
        flash[:success] = "product updated"
        redirect_to admin_product_path(@product)
      else
        render 'edit'
      end
    end

    private
    def product_params
      params.require(:product).permit(:name, :product_type)
    end
  end
end

ActiveAdmin.register ProductDetail do
permit_params :name,:product_ids

 form do |f|
    f.inputs do
      f.input :name
      f.input :products, :as => :check_boxes, :multiple => true, collection: Product.where(product_type: "Titan").map{|x| [x.name, x.id].reject(&:blank?)}
    end
    f.actions
  end

  controller do
    def create
      @product_detail = ProductDetail.new(product_detail_params)
      if  @product_detail
        redirect_to admin_product_detail_url(@product_detail)
      else
        render :action => "new"
      end
    end

    def update
      @product_detail = Course.find(params[:id])
      if @product_detail.update_attributes(product_detail_params)
        redirect_to admin_product_detail_url(@product_detail)
      else
        render :action => "edit"
      end
    end

    private 
    def product_detail_params
      params.require(:product_detail).permit(:name, :product_ids => [])   		
    end
  end  

end

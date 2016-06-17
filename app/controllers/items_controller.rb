class ItemsController < SecuredController
  
  def index
    @items = Item.all
  end

  def show
     @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.new(params.require(:item).permit(:name, :i_m__description__c, :i_m__to_category__c))
    if @item.save
        redirect_to items_path, :notice => "Cadastrado realizado com sucesso!" # usuario_path requires an id parameter like `usuario_path(@usuario)` or you could redirect to the `index` with `usuarios_path` 
    else
        render "new"
    end
  end

end
class RequestsController < ApplicationController
 
  layout false 
  def index
    @requests = Request.all
  end

  def show
    #@requests = Request.find(params[1])
  end

  def rpage
  end


  def edit
  end

  def new
  end

  def delete
  end


  def service
  @categories=["c1" , "c2" ,"c3" , "c4"]
  end

  def servicecreate
  @req = Request.new(request_params)
  #@req.category = params[:category]
  @req.typee="Service"
  @req.reference_location="abc"
    if @req.save
      redirect_to(:action => 'rpage')
    else
      render('new')
    end
  end

  def item
    @categories=["c1" , "c2" ,"c3" , "c4"]
  end

  def itemcreate
  @req = Request.new(request_params)
  @req.typee="Item"
    if @req.save
      redirect_to(:action => 'rpage')
    else
      render('new')
    end
  end

  def create
    @req = Request.new(request_params)
    if @req.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end


  private 

    def request_params
      params.require(:request).permit(:when , :where , :product_where ,:what , :negotiable ,:Upper_price_range ,:lower_price_range , :category, :tags , :status) 
    end

end

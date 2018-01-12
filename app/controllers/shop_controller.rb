class ShopController < ApplicationController
  def index
    ## initialize item 
    @items = []
    @items.push( { id: 1, name: "kindle", image_url: "https://images-na.ssl-images-amazon.com/images/I/616y1qzHetL._SL1000_.jpg", price: 950000.0 } )
    @items.push( { id: 2, name: "macbook_pro", image_url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/select/macbook-select-space-gray-201706?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1505775431709", price: 4500000.0 } )

    begin
      ## get user account data
      @user = Xfers::User.retrieve
    rescue => exception
      
    end
  end

  def buy
    ## create order id from timestamp format
    ## this must be unique every time clicked 
    order_id = "ORD" + DateTime.now.to_time.to_i.to_s

    # Creating a charge
    begin
      Xfers::Charge.create(
        :amount => params[:price].to_s,
        :currency => 'IDR',
        :order_id => order_id,
        :description => "Purchase #{params[:name].humanize}",
        :debit_only => true
      )

      redirect_to shop_index_path(alert: "<strong>Purchased #{params[:name].humanize}!</strong>".html_safe )
    rescue Xfers::XfersError => e
      puts e.to_s
      redirect_to shop_index_path
    end
  end
end

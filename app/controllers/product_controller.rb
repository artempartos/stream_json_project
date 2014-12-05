class ProductController < ApplicationController
  include ActionController::Live
  respond_to :json

  def index
    Product.find_each(batch_size: 10) do |product|
      response.stream.write product.to_json
      # Если хочется посмотреть как стримится
      # sleep 1
    end
    response.stream.close
  end

end

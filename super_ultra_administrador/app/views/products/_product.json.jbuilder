json.extract! product, :id, :name, :price, :description, :category_id, :code, :stock, :branch_id, :created_at, :updated_at
json.url product_url(product, format: :json)

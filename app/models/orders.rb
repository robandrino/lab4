class Orders < ActiveRecord::Base
belongs_to :product

	def boolean createOrder(clientNit, productCode)
		nitcliente = client.where(:nit => clientNit).first
		producto = product.where(:code => productCode).fisrt
		if((nitcliente == nil)|(producto == nil))
			puts "No existe cliente"
			return false
		else 
			orden = orders.new
			orden.code=productCode
			orden.client_id = Cliente.id
			orden.date = Time.now
			orden.amount = 1
			orden.save
		end
	end
end

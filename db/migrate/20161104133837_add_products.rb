class AddProducts < ActiveRecord::Migration[5.0]
	def change
		Product.create :title => 'Пiца Гавайська', :description => 'Екзотична пiца з найкращих продуктiв.', :price => 85, :size => 50,
		:is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaiian.png'

		Product.create :title => 'Пiца Папероннi', :description => 'Екзотична пiца для всiх i кожного.', :price => 100, :size => 60,
		:is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/papperoni.png'

		Product.create :title => 'Пiца Вегетерiанська', :description => 'Якщо ви вегетерiанець тодi ця пiца саме для вас.', :price => 50,
		:size => 50, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/veg.png'

		Product.create :title => 'Пiца Квадро', :description => 'Наша коронна пiца яку можна попробувати тiльки у нас.', :price => 150,
		:size => 100, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/kvadro.png'
	end
end

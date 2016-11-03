class CreateBarbers < ActiveRecord::Migration[5.0]
	def change
		create_table :barbers do |t|
			t.text :name

			t.timestamps
		end

		Barber.create :name => 'Роман'
		Barber.create :name => 'Христя'
		Barber.create :name => 'Марiйка'
		Barber.create :name => 'Веронiка'

	end
end

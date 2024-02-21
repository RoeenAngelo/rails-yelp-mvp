class AddPhoneNumberToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :phone_number, :integer
  end
end

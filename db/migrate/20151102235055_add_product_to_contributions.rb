class AddProductToContributions < ActiveRecord::Migration
  def change
    add_reference :contributions, :product, index: true, foreign_key: true
  end
end

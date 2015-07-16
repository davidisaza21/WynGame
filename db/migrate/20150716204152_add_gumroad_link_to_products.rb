class AddGumroadLinkToProducts < ActiveRecord::Migration
  def change
    add_column :products, :gumroad_link, :string
  end
end

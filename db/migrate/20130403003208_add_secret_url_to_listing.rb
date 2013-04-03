class AddSecretUrlToListing < ActiveRecord::Migration
  def change
    add_column :listings, :secret_url, :string
  end
end

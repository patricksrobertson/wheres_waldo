# This migration comes from identity_client (originally 20130406131436)
class CreateIdentityClientUsers < ActiveRecord::Migration
  def change
    create_table :identity_client_users do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end

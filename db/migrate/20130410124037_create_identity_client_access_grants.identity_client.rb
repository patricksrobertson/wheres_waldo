# This migration comes from identity_client (originally 20130410122748)
class CreateIdentityClientAccessGrants < ActiveRecord::Migration
  def change
    create_table :identity_client_access_grants do |t|
      t.integer :user_id
      t.string :access_token
      t.datetime :expires_at

      t.timestamps
    end
  end
end

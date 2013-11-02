class CreateOxidationStates < ActiveRecord::Migration
  def change
    create_table :oxidation_states do |t|

      t.timestamps
    end
  end
end

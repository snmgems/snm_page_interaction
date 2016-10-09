class CreateSnmpageinteractions < ActiveRecord::Migration
  def change
    create_table :snmpageinteractions do |t|
      t.string :page
      t.float :clientx
      t.float :clienty
      t.float :pagex
      t.float :pagey
      t.float :offsetx
      t.float :offsety
      t.float :screenx
      t.float :screeny
      t.timestamps
    end
  end
end


# # Uknown x y position
# offsetX
# offsetY


# Screen x y position
# screenX
# screenY

# # mouse accurate position
# clientX
# clientY

# pageX
# pageY

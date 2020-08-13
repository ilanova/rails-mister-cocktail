class ModifyColumnReferencesDoses < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :cocktails
    remove_reference :doses, :ingredients

    add_reference :doses, :cocktail
    add_reference :doses, :ingredient
  end
end

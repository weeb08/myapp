class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
	t.string :name
	t.integer :age
	t.integer :gp
	t.float :min
	t.float :fgm
	t.float :fga
	t.float :fg_percent
	t.float :three_pm
	t.float :three_pa
	t.float :three_p_percent
	t.float :ftm
	t.float :fta
	t.float :ft_percent
	t.float :reb
	t.float :ast
	t.float :stl
	t.float :blk
	t.float :pts
	t.float :pts_thirty_six
	t.float :reb_thirty_six
	t.float :pps
	t.float :plus_minus
	t.integer :sal_2015
	t.integer :sal_2016
	t.integer :sal_2017
	t.float :ts_percent
	t.float :ast_ratio
	t.float :to_ratio
	t.float :usg
	t.float :reb_rate
	t.float :per
	t.float :va
	t.float :ewa	
	t.references :team
      t.timestamps
    end
  end
end

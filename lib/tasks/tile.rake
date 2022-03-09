namespace :tile do
  desc "Update tile data"
  task refresh_all: :environment do
    tiles = Tile.all
    tiles.each do |tile|
      tile.refresh_data
    end
  end
end

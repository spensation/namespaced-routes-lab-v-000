class Preference < ActiveRecord::Base

  def self.allow_create_artists?
    self.first.allow_create_artists? if self.first
  end

  def self.allow_create_songs?
    self.first.allow_create_songs? if self.first
  end

  def self.song_sort_order 
    self.first.song_sort_order if self.first
  end

  def self.artist_sort_order
    self.first.artist_sort_order if self.first
  end
end

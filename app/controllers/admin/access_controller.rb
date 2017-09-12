class Admin::AccessController < ApplicationController
  def index
    if Preference.first.present?
      @preference = Preference.first
    else
      @preference = Preference.create(allow_create_artists: true, allow_create_songs: true)
    end
  end

  def update
    @preference = Preference.first
    if @preference.update(access_params)
      redirect_to admin_access_index_path
    else
      render :index
    end
  end

  private

  def access_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end
end

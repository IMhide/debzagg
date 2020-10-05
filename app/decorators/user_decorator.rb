class UserDecorator < ApplicationDecorator
  delegate_all

  def full_nick
    if tag.blank?
      nickname
    else
      "#{tag} | #{nickname}"
    end
  end

  def full_location
    if city.blank?
      country
    else
      "#{city}, #{country}"
    end
  end

  def display_name
    "#{firstname} #{lastname[0]}."
  end

  def full_localisation
    loc = ""
    loc << "#{city}, " unless city.blank?
    loc << country
    loc
  end

  def safe_cover_picture_url
    if cover_picture.nil?
      h.asset_url 'default_cover.jpg'
    else
      cover_picture_url
    end
  end

  def safe_profil_picture_url
    if profil_picture.nil?
      h.asset_url 'default_profile.png'
    else
      profil_picture_url
    end
  end
end

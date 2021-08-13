module ApplicationHelper

  def robohash(user)
    robohash_url = "https://robohash.org/#{user.email}"
    image_tag(robohash_url, alt: user.username, class: "mx-auto d-block")
  end

end

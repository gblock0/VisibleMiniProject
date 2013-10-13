module StartupSearchHelper
  def cleanUrl(url)
    if url.count('.') > 1
      website = url.split('.')
      url = website[website.length - 2] + "." + website[website.length - 1]
    elsif url.include?("http")
      website = url.split("\/\/")
      website = website[1].split('.')
      url = website[website.length - 2] + "." + website[website.length - 1]
    end
    url = url.delete('\/')
    url
  end
end

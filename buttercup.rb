require 'open-uri'

def download_image(url, dest)
  begin
  open(url) do |u|
    File.open(dest, 'wb') { |f| f.write(u.read) }
  end
  rescue
    puts "Error - not valid image path"
  end
end

for i in 1..143 do
  download_image("http://www.buttercupfestival.com/2-#{i}.png","images/#{i}.png")
end

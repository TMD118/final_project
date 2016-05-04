Given /^the following doctors exist:$/ do |docs|
  docs.hashes.each do |doc|
    
    Doctor.create!(doc)

  end
end
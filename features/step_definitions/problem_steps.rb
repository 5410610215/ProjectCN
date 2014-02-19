Given /the following unsolveds exist/ do |unsolveds_table|
  unsolveds_table.hashes.each do |unsolveds|
    Unsolved.create!(unsolveds)
  end
end
When /^I destroy problem id "([^"]*)"$/ do |element|  
    visit send(unsolveds_path, element, { method: :delete })
end


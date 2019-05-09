Given(/^I am on PuppiesAdopt page$/) do
  @browser.goto "http://puppies.herokuapp.com/"
end


#When(/^I click Adopt a Puppu link$/) do
#if @browser.link(text:'Adopt a Puppy').exist?
#  @browser.link(text:'Adopt a Puppy').click
#  sleep 5
#puts 'I am on Adopt Puppy Page'

#end
#end

When(/^I click view details$/) do
    if @browser.button(:index =>3).exist?
      @browser.button(:value =>'View Details', :index=>3).click
    end

    sleep 5
end
And(/^I click Adopt Me$/) do
if @browser.button(:value => 'Adopt Me!').exist?
  @browser.button(:value => 'Adopt Me!').click

end
sleep 5
end

And(/^I click on Chew Toy and Travel Carrier$/) do
  if @browser.checkbox(:xpath=> '//*[@id="toy"]').exist?
    @browser.checkbox(:xpath=> '//*[@id="toy"]').set
  end

  if @browser.checkbox(:xpath=> '//*[@id="carrier"]').exist?
    @browser.checkbox(:xpath=> '//*[@id="carrier"]').set
  end

  sleep 5
end

And(/^I click on Complete the Adoption$/) do
  if @browser.button(:value => 'Complete the Adoption').exist?
  @browser.button(:value => 'Complete the Adoption').click
  end
  sleep 5
  end

And(/^I enter the text fields$/) do
  @browser.text_field(:id => 'order_name').set('meghana')
  @browser.textarea(:id => 'order_address').set('75063 oak lane tx')
  @browser.text_field(:id => 'order_email').set('meg1234@gmail.com')
  @browser.select_list(:id => 'order_pay_type').option(:value => "Credit card").select
  @browser.button(:xpath => '//*[@id="new_order"]/div[6]/input').click
  sleep 5
end

Then(/^Validate the Success Message$/) do
  if @browser.p(:id=>'notice').text.include?('Thank you for adopting a puppy!').should == true
    p 'Test is Successfull. Adopting puppy is successful'
else
  p 'Adopting Puppy Failed. Test failed'
  end
  end
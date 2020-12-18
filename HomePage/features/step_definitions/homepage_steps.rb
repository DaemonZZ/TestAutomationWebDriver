
Given('the customer is in Shop page') do
    @driver = Selenium::WebDriver.for:firefox
    @driver.navigate.to "http://practice.automationtesting.in/"
    @driver.find_element(:xpath,"/html/body/div[1]/div[1]/header/div[2]/nav/ul/li[1]/a").click
  end
  
  When('back tho Homepage with Home menu') do
    @driver.find_element(:xpath,"/html/body/div[1]/div[2]/div/div/nav/a").click
  end
  
  
  Then('homepage is loaded with {int} sliders only') do |int|
    count=1
    begin
      while @driver.find_element(:xpath,"/html/body/div[1]/div[2]/div/div/div/div/div/div[1]/div/div/div/div/div/div/div/div[1]/div[1]/div/div/div[#{count}]").size()!=0 do
        count=count+1
    end
  rescue
    Kernel.puts "so slide tim dc: #{count-1}"
    Kernel.puts "expected: #{int}"
    end
    expect(count-1).to eql(int)
    @driver.quit
  end 
  
  Then('homepage is loaded with {int} Arrivals only') do |int|
    count=1
    begin
      while @driver.find_element(:xpath,"/html/body/div[1]/div[2]/div/div/div/div/div/div[2]/div/div/div/div/div[2]/div[#{count}]").size()!=0 do
        count=count+1
      end
    rescue
      Kernel.puts "so arrival tim dc: #{count-1}"
      Kernel.puts "expected: #{int}"
    end
    expect(count-1).to eql(int)
    @driver.quit
  end 
  
  # And('Click the image {int} in the Arrivals') do |int|
  #   @driver.execute_script("window.scrollTo(0, document.body.scrollHeight/3)")
  #   el = @driver.find_element(:xpath,"//*[@id='themify_builder_content-22']/div[2]/div/div/div/div/div[2]/div[#{int}]")
  #   @driver.action.move_to(el).perform
  #   el.click
  #   end
  
  # Then('It is navigating to next page') do
    # end
    
    # When('Click on {string} tab for the book you clicked on') do |string|
    # end
    
    # Then('There should be a description regarding that book the user clicked on') do
    # end
    
    # Then('There should be a Reviews regarding that book the user clicked on') do
    # end


      
      
      
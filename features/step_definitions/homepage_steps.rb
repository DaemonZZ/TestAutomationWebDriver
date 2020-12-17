
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
    
    end 
 
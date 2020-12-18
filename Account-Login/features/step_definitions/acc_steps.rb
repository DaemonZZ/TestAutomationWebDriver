Given('Goto MyAccount menu') do
    @driver = Selenium::WebDriver.for:firefox
    @driver.navigate.to "http://practice.automationtesting.in/"
    @driver.find_element(:xpath,"/html/body/div[1]/div[1]/header/div[2]/nav/ul/li[2]/a").click
  end
  
  When('Click Login btn') do
    @driver.find_element(:xpath,"/html/body/div[1]/div[2]/div/div/div/div/div[1]/div/div[1]/form/p[3]/input[3]").click
  end
  
  Then('{string} is display and prompt to enter login again') do |string|
    alert = @driver.find_element(:xpath,"/html/body/div[1]/div[2]/div/div/div/div/div[1]/ul/li").text
    Kernel.puts "Thong bao : #{alert}"
    @driver.quit
    expect(alert).to eql(string)
  end
  
  When('Enter incorrect username aloaloalo in username textbox incorrect password 123abc in password textbox.') do
    @driver.find_element(:xpath,"//*[@id='username']").send_keys "aloaloalo"
    @driver.find_element(:xpath,"//*[@id='password']").send_keys "123abc"
  end
  
  When('Enter incorrect username hansama in username textbox incorrect password clannand in password textbox.') do
    @driver.find_element(:xpath,"//*[@id='username']").send_keys "hansama"
    @driver.find_element(:xpath,"//*[@id='password']").send_keys "clannand"
  end

  When('Empty username textbox and valid password Value1 in password textbox.') do
    @driver.find_element(:xpath,"//*[@id='password']").send_keys "Value1"
  end
  
  When('Empty username textbox and valid password asdgfiu3782jksdg in password textbox.') do
    @driver.find_element(:xpath,"//*[@id='password']").send_keys "asdgfiu3782jksdg"
  end

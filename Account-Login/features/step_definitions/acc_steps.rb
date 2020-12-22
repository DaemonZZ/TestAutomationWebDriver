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
  
  When('Enter incorrect username {string} in username textbox incorrect password {string} in password textbox.') do |string, string2|
    @driver.find_element(:xpath,"//*[@id='username']").send_keys string
    @driver.find_element(:xpath,"//*[@id='password']").send_keys string2
  end
  When('Empty username textbox and valid password {string} in password textbox.') do |string|
    @driver.find_element(:xpath,"//*[@id='password']").send_keys string
  end
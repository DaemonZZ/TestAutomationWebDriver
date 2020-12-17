Feature:  check hompage
  
    The Home page must contains only three sliders and three Arrivals
    Background: Load homepage
        Given the customer is in Shop page
        When back tho Homepage with Home menu
    Scenario: Homepage with only 3 sliders
        Then homepage is loaded with 3 sliders only
    Scenario: Homepage with 3 arrivals
        Then homepage is loaded with 3 Arrivals only

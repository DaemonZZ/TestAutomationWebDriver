Feature:  check hompage
  
    1. Home Page with three Sliders only
    2. Home page with three Arrivals only
    3. Home page - Images in Arrivals should navigate
    4. Home page - Arrivals-Images-Description
    5. Home page - Arrivals-Images-Reviews
    6. Home page - Arrivals-Images-Add to Basket
    7. Home page - Arrivals-Add to Basket with more books
    8. Home-Arrivals-Add to Basket-Items
    9. Home-Arrivals-Add to Basket-Items-Coupon
    10. Home-Arrivals-Add to Basket-Items-Coupon value   
    11. Home-Arrivals-Add to Basket-Items-Remove book
    12. Home-Arrivals-Add to Basket-Items-Add book
    13. Home-Arrivals-Add to Basket-Items-Check-out-Book Final price
    14. Home-Arrivals-Add to Basket-Items-Check-out-Update Basket
    15. Home-Arrivals-Add to Basket-Items-Check-out-Total & Sub-total condition
    16. Home-Arrivals-Add to Basket-Items-Check-out functionality
    17. Home-Arrivals-Add to Basket-Items-Check-out-Payment Gateway
    18. Home-Arrivals-Add to Basket-Items-Check-out-Payment Gateway-Place order
    # #
    # Background: Load homepage
        
    #1
    Scenario: Homepage with only 3 sliders
        Given the customer is in Shop page
        When back tho Homepage with Home menu
        Then homepage is loaded with 3 sliders only
    #2
    Scenario: Homepage with 3 arrivals
        Given the customer is in Shop page
        When back tho Homepage with Home menu
        Then homepage is loaded with 3 Arrivals only
    #3
    # Scenario Outline: Image should be clickable and shoul navigate to next page where user can add that book to his basket
    #     Given the customer is in Shop page
    #     When back tho Homepage with Home menu
    #     Then homepage is loaded with 3 Arrivals only
    #     And Click the image <img> in the Arrivals
    #     Then It is navigating to next page
    #     Examples:
    #     |img|
    #     |1|
    #     |2|
    #     |3|
    # #4
    # Scenario Outline: Arrivals-Images-Description
    #     Given homepage is loaded with 3 Arrivals only
    #     When Click the image <img> in the Arrivals
    #     Then It is navigating to next page
    #     When Click on 'Description' tab for the book you clicked on
    #     Then There should be a description regarding that book the user clicked on
    #     Examples:
    #     |img|
    #     |160|
    #     |163|
    #     |165|
    # #5
    # Scenario Outline: Arrivals-Images-Reviews 
    #     Given homepage is loaded with 3 Arrivals only
    #     When Click the image <img> in the Arrivals
    #     Then It is navigating to next page
    #     When Click on 'Review' tab for the book you clicked on
    #     Then There should be a Reviews regarding that book the user clicked on
    #     Examples:
    #     |img|
    #     |160|
    #     |163|
    #     |165|
    # #6
    

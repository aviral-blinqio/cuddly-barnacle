Feature: shop

  Scenario Outline:  buy item
        Given login with "<username>" and "<password>"
        Given add to basket "<item>"
        When open basket
        Then the total price is "<price>"
        When checkout with first name "guy", last name "arieli", zip "100102"
        Then verify "Thank you for your order" can be found in the page

    
    Examples:
        | username    | password   | item                               | price |
        | blinq_user  | let_me_in  | Urban Backpack - Compact & Durable | 25.99 |

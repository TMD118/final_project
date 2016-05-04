Feature: Search and Edit Doctor
  As a clerical staff
  So that I can search the doctor timing
  I want to serach on doctor information in Database I enter
 
Background: doctors in database
 
  Given the following doctors exist:
  | name        | email               | room     | officeno | cellno        | arrivaltime | leavetime |
  | Rizwan      | 17110298@gmail.com  | 05       |  425     |               | 19          | 23        |
  | Aoun        | 171sda@gmail.com    | 06       |  552     | +923347809829 | 15          | 17        |
  | Sarim       | 171dsas2@gmail.com  | 07       |  695     | +923347805829 | 05          | 06        |
  | Riz         | 17dd 298@gmail.com  | 10       |  725     | +923342904929 | 20          | 21        |
 
Scenario: search doctor by time
  When I go to the search page as "ADVANCE SEARCH"
  And  I fill in "Min time" with "10"
  And  I fill in "Max time" with "16"
  And  I press "Search"
  Then  I should see "Aoun"
Scenario: search doctor by name
 Given I am on the "Home page"
  And  I fill in "search" with "R"
  And  I press "Search"
  Then  I should see "Rizwan"

 
 

### Feature: Axis Selection

**Scenario 1: Changing Y-axis**
   - Given the application page is loaded
   - When I select a different option for the Y-axis
   - Then the plot should be updated accordingly

**Scenario 2: Changing X-axis**
   - Given the application page is loaded
   - When I select a different option for the X-axis
   - Then the plot should be updated accordingly

### Feature: Coloring of the Plot

**Scenario: Changing the 'Color by' Option**
   - Given the application page is loaded
   - When I select a different option for 'Color by'
   - Then the plot’s color coding should be updated accordingly

### Feature: Plot Opacity

**Scenario: Adjusting the Alpha Slider**
   - Given the application page is loaded
   - When I adjust the alpha slider
   - Then the plot's opacity should change according to the selected alpha value

### Feature: Point Size Adjustment

**Scenario: Adjusting the Size Slider**
   - Given the application page is loaded
   - When I adjust the size slider
   - Then the size of the points in the plot should change according to the selected size value

### Feature: Plot Title

**Scenario 1: Adding a Plot Title**
   - Given the application page is loaded
   - When I enter a text in the "Plot title" box and click "Update plot title"
   - Then the plot title should be updated with the entered text

**Scenario 2: Updating a Plot Title**
   - Given a title has already been set
   - When I enter a new text in the "Plot title" box and click "Update plot title"
   - Then the plot title should be updated to the new text

### Feature: External Links

**Scenario: Clicking External Links**
   - Given the application page is loaded
   - When I click on the IMDB or Rotten Tomatoes links
   - Then it should open the corresponding page in a new tab or window

### Feature: Visualization

**Scenario: Viewing the Scatter Plot**
   - Given the application page is loaded
   - When I interact with different controls in the sidebar panel
   - Then the scatter plot in the main panel should update based on the selected options

Below are the features and scenarios written in Gherkin syntax:

```gherkin
Feature: Axis Selection
    As a user
    I want to change the axes
    So that I can visualize different data comparisons

    Scenario: Changing Y-axis
        Given the Shiny app is loaded
        When I select "IMDB rating" from the Y-axis dropdown
        Then the plot should update to reflect the Y-axis as "IMDB rating"

    Scenario: Changing X-axis
        Given the Shiny app is loaded
        When I select "Runtime" from the X-axis dropdown
        Then the plot should update to reflect the X-axis as "Runtime"


Feature: Coloring of the Plot
    As a user
    I want to change the color coding
    So that I can visualize different categorical divisions

    Scenario: Changing the 'Color by' Option
        Given the Shiny app is loaded
        When I select "Genre" from the 'Color by' dropdown
        Then the plot’s colors should update to reflect the "Genre"


Feature: Plot Opacity
    As a user
    I want to adjust the plot's opacity
    So that I can customize the plot's appearance

    Scenario: Adjusting the Alpha Slider
        Given the Shiny app is loaded
        When I set the alpha slider to 0.8
        Then the plot's opacity should adjust to reflect the alpha value of 0.8


Feature: Point Size Adjustment
    As a user
    I want to adjust the size of the points
    So that I can customize the plot's appearance

    Scenario: Adjusting the Size Slider
        Given the Shiny app is loaded
        When I set the size slider to 4
        Then the size of the points in the plot should adjust to 4


Feature: Plot Title
    As a user
    I want to change the plot title
    So that I can customize the title of the plot

    Scenario: Adding a Plot Title
        Given the Shiny app is loaded
        When I enter "My Custom Title" into the "Plot title" field and click "Update plot title"
        Then the plot title should update to "My Custom Title"


Feature: External Links
    As a user
    I want to access external references
    So that I can get more information

    Scenario: Clicking External Links
        Given the Shiny app is loaded
        When I click on the "IMDB" link
        Then a new tab or window should open with the IMDB webpage

Feature: Movie Review Dataset Variables

  In order to provide comprehensive movie reviews,
  As an application,
  I want to have a dataset with variables from IMDB and Rotten Tomatoes.
  
  Background: 
    Given the application has access to IMDB and Rotten Tomatoes APIs
    
  Scenario:  Movie Review Continuous and Categorical Variables 
    When the application loads from IMDB and Rotten Tomatoes movie review data
    Then the dataset should include a continuous critic ratings variable 
    And the dataset should include a continuous audience ratings variable 
    And the dataset should include a categorical mpaa ratings variable 
    And the dataset should include a categorical genres variable 
```

```gherkin
Feature 1.2: Scatter Plot Points Dropdown Menu Controls

  As a film analyst creating a scatter plot,
  I want dropdown menus to select continuous variables for x and y axes 
  And I want a dropdown menu to select a categorical variable for point color,
  So that I can effectively visualize relationships and categories in the data.

  Scenario: Dropdown Menu Display and Use for Controling Scatter Plot Points
    Given the scatter plot customization options displayed in the UI
    When I define the variables in the scatter plot axes and point color
    Then I should see a continuous variable dropdown menu x-axis control 
    And I should see a continuous variable dropdown menu y-axis control 
    And I should see a categorical variable dropdown menu point color control

Feature 1.3: Adjustable Point Size and Opacity Controls

  As a user who wants to interactively customize data visualization,
  I want sliders or similar controls to adjust the point size and opacity,
  So that I can tailor the visualization according to my preferences and needs.
  
  Scenario: Sliders for Adjusting Point Size and Opacity
    Given the movie review app UI is loaded
    When I look for controls to customize point appearance in the visualization
    Then I should see a slider or similar control for adjusting the point size
    And I should see a slider or similar control for adjusting the point opacity

Feature 1.4: Custom Scatter Plot Title

  As a user who wants to personalize the scatter plot visualization,
  I want an input field to enter an optional title for the scatter plot,
  So that the visualization can be meaningful and tailored to my needs.

  Scenario: Displaying Input Field for Scatter Plot Title
    Given the movie review app UI is loaded
    When I want to add a title to the scatter plot
    Then I should see an input field where I can enter the title text
```

Each `Feature` represents a high-level user goal, and each `Scenario` represents a way to achieve that goal. `Given` sets up the initial context, `When` describes the action, and `Then` describes the expected outcome or result.
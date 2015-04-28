# Spleat Test - Spleatbot

This is a small project created for Spleat.co.uk's interview.

## Original Requirements

```
“ Here's a tech task which reflects the kind of thing we'll need at Spleat. It shouldn't take more than an hour or so.

 Write a Ruby class which generates reporting data in a given date range.

 The date range is passed in as maybe String format or maybe a Date object.

 Here's the data model:

 We have the concept of venues (restaurants and bars), tabs (like a "bill" or "check"), and users who open and belong to tabs.

 Multiple users can be on the same tab, and a user can be on multiple tabs.

The many-to-many relationship between users and tabs is UserTab

A tab belongs to a venue

A user can make one or more payments on a tab

A payment has a success status (boolean)

 

The reporting data to generate is a list of venues, the number of transactions at that venue, and the value of the transactions in the given date range.

 Each row should be VenueRow class with the 3 methods name, transactions and value (for venue name, number of transactions and £ value).

 Assume you're using ActiveRecord in Rails. State any other assumptions or comments to (briefly) explain design decisions.

 Here's the existing model classes:

 class Venue < ActiveRecord::Base

  has_many :tabs

end

 

class Tab < ActiveRecord::Base

  belongs_to :venue

  has_many :user_tabs

end

 

class UserTab < ActiveRecord::Base

  belongs_to :tab

  belongs_to :user

  has_many :payments

end

 

class User < ActiveRecord::Base

  has_many :user_tabs

  has_many :tabs, through: :user_tabs

end

 

class Payment < ActiveRecord::Base

  belongs_to :user_tab

end

 The reporting class should have a public method results which returns an ordered array of VenueRows, with highest value first.

 Please post your results to your Github/Bitbucket/other public repository.

 Any questions or clarifications please ask.”

```


## Setup
To setup the project run the following commands

```
 $ bundle install
 $ rake db:migrate
 $ rake db:seed
```

The commands above will install all the necessary gems, run the migrations and populate the Database with seed data.


## Generating Reports
To run the app type the command `rails s` and navigate to `localhost:3000` in your browser.
Select a FROM and TO date for the report and hit the 'Generate' button.

## Extra notes

### Testing
Regretably due to time constraints no tests have been written for this project.

### Aesthetics
Again, due to time constraints no care has been given on UI.

### Solution details
The report builder has been created as a service that lives under `app > services`.
The reason for this was that the report builder doesn't fit very nicely in the MVC framework, so has instead been created as a PORO and handled like an additional service to keep the code clean and DRY.

Throughout the code you will find methods like "transactions" or "successfull_transactions". Such methods could easily (and should) be consolidated into a single method to keep the code DRY. Due to time constraints such modifications/planning has not been possible. 
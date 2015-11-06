This is an assignment for the HelloSign recruitment process. 

## Requirements and test conditions

```TEST 1: Go to www.hellosign.com, click on "LOG IN" in the upper right, enter "notanemail" in the email address field and "notapassword" in the password field, and then click "SIGN IN". You should verify that the followingerror is displayed: "Invalid email address".```

```TEST 2: Go to www.hellosign.com, click on "LOG IN" in the upper right, enter "email@example.com" in the email address field and "wrongpass" in the password field, and then click "SIGN IN". You should verify that the following error is displayed: "Invalid username/password combo."```


## Preconditions for the tests

These are the requirements to perform the tests
-[Firefox](https://www.mozilla.org/en-US/firefox/new/)
-[Ruby](https://www.ruby-lang.org/en/documentation/installation/)

## Installaling Watir and Selenium (assuming you already have the preconditions)

```
$gem update --system
$gem install watir-webdriver --no-ri --no-rdoc *This will also install selenium webdriver
```

Almost there!

## Running the tests

Clone the repository
cd into the new repo
Run the first test:
```$ruby test1.rb```
Run the second test:
```$ruby test2.rb```


# Notes:
While ideally the tests would be part of a set and run sequentially, they were separated into its own file for ease of review.

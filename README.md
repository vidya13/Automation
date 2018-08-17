# Sample test

#What is this

This test creates ANZ(NZ) bank account to test org. 

# How?

1.Launch xero application and login to xero and navigate to accounts to create a bank account.

2.Delete the created account so that script can be run every single build


# Testing

To run this script first Clone the git repo https://github.com/vidya13/Automation
 
Go to that folder and run the below command

   rspec /Users/vidya.narasimhan/vidya/Automation/spec/feature/stepdefinition/test.rb'
   
#Setup to run this test

This test requiries chrome driver in your machine. 

Download chrome driver
http://chromedriver.storage.googleapis.com/index.html?path=2.16/

Copy the driver to /usr/local/bin

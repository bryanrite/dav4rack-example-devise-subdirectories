## Welcome to the DAV4Rack Rails Example using Devise and Per-User Subdomains!

If you don't know what DAV4Rack is, check out the gem by Chris Roberts: <https://github.com/chrisroberts/dav4rack/> 

### Walkthrough

#### Set It Up Locally

Clone the repo off Github and run `bundle install && rake db:migrate && rails s`

It will start up like a regular rails application.

With a web browser, goto `localhost:3000` and you should see the welcome page!

#### Setting Up User Accounts

The Welcome Page has links to Login and Sign Up.  These are simple links provided by Devise.

Create an account (or many) using the Create Account link. 

This creates a user account using a pretty vanilla install of Devise (with the exception of using usernames instead of email). 

For each account you create, a folder will be created automatically in **Rails.root/public/system/userfiles**, this is where we will store the per-user subdirectories they will access over WebDAV.

#### Connecting with WebDAV

If you have created an account, you should be able to connect to it via WebDAV.

Boot up your WebDAV client (Apple Finder, Cyberduck, Cadaver, etc.) and visit: <webdav.lvh.me:3000>

If you don't know what *.lvh.me is, its just a CNAME to localhost, makes working with subdomains on your local machine easier.  In this example we've constrained WebDAV to only work on the webdav subdomain, but you can change this in `routes.rb` if you desire.

Enter the username and password for a user account you have previously registered and you should get a chrooted DAV folder!

### More help?

There is a step-by-step walkthough available: <https://github.com/chrisroberts/dav4rack/wiki/Advanced-Rails-3-Tutorial---Custom-Resource,-Devise,-and-User-Specific-Routing>

Question or comments can be posted on github: <https://github.com/bryanrite/dav4rack-example-devise-subdirectories>

Version: 1.0.2

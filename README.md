## Welcome to the DAV4Rack Rails Example using Devise and Per-User Subdomains!

If you don't know what DAV4Rack is, check out the gem by Chris Roberts: <https://github.com/chrisroberts/dav4rack/> 

### How does this work?

Clone the repo off Github, run `bundle install && rake db:migrate && rails s`

With a web browser, goto `localhost:3000` (its just a regular rails app)

Create an account (or many) using the link above. This creates a user account using a pretty vanilla install of Devise. For each account you create, a folder will be created automatically in **/Users/brite/src/example/public/system/userfiles**

You can then connect to this folder with WebDAV at: **webdav.lvh.me:3000**

*(if you don't know what *.lvh.me is, its just a CNAME to localhost, makes working with subdomains on your local machine easier)*

You should now have per-user chrooted WebDAV folders authenticated with Devise!

### More help?

A brief walkthough is available: <https://github.com/chrisroberts/dav4rack/wiki/Advanced-Rails-3-Tutorial---Custom-Resource,-Devise,-and-User-Specific-Routing>

Question or comments can be posted on github: <https://github.com/bryanrite/dav4rack-example-devise-subdirectories>

Version: 1.0.0

SpreeTestExtension
==================

This extension consolidates all the rspec model tests from spree_core, spree_promo, spree_auth_devise, 
spree_active_shipping, spree_address_book, spree_gateway, and spree_print_invoice. 

These tests, when consolidated, should hopefully all pass, but it seems like I am getting 31 errors when running the tests. 
My goal is to figure out why these failures are happening when the tests are consolidated. 

Testing
=======

run "bundle exec rake test_app" in the terminal to create the dummy application for rspec.
run "bundle exec rspec spec" to run the tests

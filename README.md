# Project-Caesar-Cipher
This is the project for Odin Ruby course practice. Input can be either positive or negative integer number for shifting. The method using to wrap the letters is to get the remainder from divided by 26.

## Cloning and installation

Clone this repository to your local machine. To do this, click on the green "Code" button at the top right of list of files and copy the link in the prompt. Then, run the following command in your terminal:

    git clone <link>

This will create a folder called 'ruby-exercises' inside the directory you ran the command in.

CD into that folder:

    cd Project-Caesar-Cipher

Then run the following command:

    bundle install

This folder contains a Gemfile, which tells bundle which gems to install locally and makes them available for use in that directory. In this case, we are installing RSpec, which is a popular Ruby testing framework.

Verify that the installation was successful by simply running the following command:

    bundle exec rspec/caesar_cipher_spec.rb

Which should print a few lines about not finding any examples. This is ok and means it's working!
# Create a jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add jekylll dependences to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll "jekyll:3.9.2"
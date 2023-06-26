# Create a jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:3.3-rc-alpine3.18

# Add jekylll dependences to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install jekyll
RUN gem update bundler
RUN gem install sass-embedded -v 1.63.6
RUN gem install bundler jekyll "jekyll:3.9.2"
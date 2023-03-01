FROM dependabot/dependabot-core
RUN git clone https://github.com/dependabot/dependabot-script /home/dependabot/dependabot-script
RUN pwd
WORKDIR /home/dependabot/dependabot-script
RUN bundle install -j 3
CMD ["bundle", "exec", "ruby", "./generic-update-script.rb"]

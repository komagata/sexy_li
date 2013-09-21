# Sexy li

Make easy creating typicaly list.

Before:

    <ul>
      <% - @posts.each do |post| %>
        <%= content_tag_for :li, post %>
          <div class="id"><%= post.id %></div>
          <div class="title"><%= post.title %></div>
        <% end %>
      <% end %>
    </ul>

After:

    <ul><%= render_li_for @posts %></ul>

_post.html.erb:

    <div class="id"><%= post.id %></div>
    <div class="title"><%= post.title %></div>

Haml or Slim same above.

## Installation

Add this line in your Gemfile.

    gem 'sexy_li'

And bundle.

    $ bundle

## License

Dual licensed under the MIT or GPL licenses:

+ http://www.opensource.org/licenses/mit-license.php
+ http://www.gnu.org/licenses/gpl.html

Copyright © 2013 Masaki Komagata

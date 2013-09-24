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

Haml or Slim are same above.

## Installation

Add this line in your Gemfile.

    gem 'sexy_li'

And bundle.

    $ bundle

## Usage

### render_li_for

See above.

### render_li_for with custom partial

    <ul><%= render_li_for @posts, { partial: 'post_small' } %></ul>

_post_small.html.erb:

    <div class="id"><%= post.id %></div>
    <div class="title"><%= post.title %></div>

### render_tr_for

It put tr tag instead of li tag.


### render_content_for

    <ul><%= render_li_for @posts %></ul>

It is same blow.

    <ul><%= render_content_for :li, @posts %></ul>

### li_for

    <%= content_tag_for :li, @post %>

It is same blow.

    <%= li_for @post %>

### tr_for

    <%= content_tag_for :tr, @post %>

It is same blow.

    <%= tr_for @post %>

## License

Dual licensed under the MIT or GPL licenses:

+ http://www.opensource.org/licenses/mit-license.php
+ http://www.gnu.org/licenses/gpl.html

Copyright © 2013 Masaki Komagata

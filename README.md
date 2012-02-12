# Blogtastic

Welcome to **Blogtastic**. This app is (or, rather, will be) a Ruby on Rails blog management system providing support
for blog posts, comments, and static pages of content created from Markdown documents.

One might ask "Why embark on such an endeavor? The ubiquity of WordPress makes this a moot point right?" The answer is
simple: While WordPress is a superb piece of software - one that I will continue to recommend to people who need a
turnkey solution to professional blogging - it has, in this developer's opinion, become overly bulky over the course
of its tenure. WordPress, while blindingly simple to implement and maintain, has a lot of overhead involved in doing
its business.

If you don't want to deal with WordPress, then you have few options of similar quality. There are a handful of systems
that are powered by git version control that allow developers to post articles, but they aren't very friendly to users
who are unfamiliar with git. Additionally, you could be stuck using a service like Disqus if you want to have comments
on such a blog. (This is not a solution of which I am a fan.)

## Project Goals

The goals of this project are to create a blogging system that:

* Takes in documents formatted in [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) and processes all
of the metadata and content into a blog post and/or static page.
* Provides comment functionality in-house, complete with the requisite administrative toolkit to manage these
comments.
* Provides basic User management functionality.
* Implements the [WordPress API](http://codex.wordpress.org/XML-RPC_wp) to provide plug-and-play compatibility
with any services and applications that already talk to WordPress.

I like to think of this project as creating blogging software for people who hate blogging software. My overarching
mission is to create some compromise between WordPress and a static-pages powered system, that can interact with all
the awesome applications that already talk to WordPress.

## About the Developer

My name is [Matt Farmer](http://matt.frmr.me). I'm a Software Engineer at [OpenStudy](http://openstudy.com) and I
blog about my thoughts on development, the technology industry on my personal blog, [Farmdawg Nation](http://farmdawgnation.com).

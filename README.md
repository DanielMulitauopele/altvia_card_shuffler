# altvia_card_shuffler

<img src="https://img.shields.io/badge/ruby-v2.6.6-red" title="ruby-badge">

<img width="1049" alt="Screen Shot 2021-03-16 at 11 13 30 PM" src="https://user-images.githubusercontent.com/37354322/111418414-4f21a000-86ad-11eb-8066-6c02d30160f2.png">

## Relevant Links
* [Trello Board](https://trello.com/b/r1uKJ90v/altvia-technical-challenge)
* [Cards On Deck Gem](https://rubygems.org/gems/cards_on_deck)
* [Cards On Deck Repository](https://github.com/DanielMulitauopele/CardsOnDeck)


## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Requirements](#system-requirements)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
* [Dependencies](#dependencies)
* [Contributors](#contributors)

## Description/Purpose

This Ruby program was created as a subset of a larger submission for the technical challenge for Altvia's Ruby Software Developer position. My initial approach was to create a small object-oriented Ruby program with Card and Deck classes. I developed this small program first, but I realized it was not terribly satisfying to see a deck of cards return as 'shuffled' from the command line. As a result, I decided to build something a little more visual and, by refactoring this code into a custom gem (found [here](https://github.com/DanielMulitauopele/CardsOnDeck)), I was able to abstract away the Card and Deck logic supporting this program as well as import that logic into a brand new Rails 6 application (found [here](https://github.com/DanielMulitauopele/FullStackHouse)). Because the main functionality was extracted from this originating program into a custom gem, this program serves to demo said [CardsOnDeck](https://github.com/DanielMulitauopele/CardsOnDeck) gem and to serve as a script that points developers to the Rails application. 

To see the more advanced version of this program, view the repository [FullStackHouse](https://github.com/DanielMulitauopele/FullStackHouse) or view the deployed application [here](https://immense-reaches-91193.herokuapp.com/).

## Prompt

Please design and implement a card shuffler using the language of your choice.

Requirements: 

* Implementation should be done in a code repository that can be pulled down by an Altvia engineer
* Readme provided on how to run your project
* Showcase your skill set

## System Requirements

This application requires ruby to be installed to your local
machine:

* [Ruby 2.6.6](https://www.ruby-lang.org/en/)

## Setup

To setup this application locally, take the following steps:

* Clone this repository down into a local directory of your choice.
* Navigate(cd) into altvia_card_shuffler
* Run bundle
* Run `ruby runner.rb` to run the program

## Dependencies

**Development / Testing**

* [MiniTest](https://github.com/seattlerb/minitest)
* [CardsOnDeck](https://github.com/DanielMulitauopele/CardsOnDeck)

## Testing

To test this application locally, take the following steps:

* Run `ruby test/card_shuffler_test.rb` to run the test suite
* All 5 tests should pass, with 2 tests skipped due to `sleep` code. If unskipped, those tests pass as well. 

Common testing errors:

* If during setup, there is a Gem:ConflictError, run 'gem update railties'

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)

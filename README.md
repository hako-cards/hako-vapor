# Hako Vapor

A lightweight backend for [Hako](https://hako.cards) that provides up-to-date credit cards and spending categories.

### Design

The backend and frontend for Hako share models in the [hako-shared](https://github.com/hako-cards/hako-shared) package. Right now, cards and categories are simply defined in the backend as static constants written in Swift. While this might seem odd, it's lightweight and works for now, and if I decide to deal with databases at some point I could easily write some code to write those constants to the db.

### Contributing

If you want to add a card, you can fork the repo, add the card, and make a PR. Please fill in the details in the pull request template.

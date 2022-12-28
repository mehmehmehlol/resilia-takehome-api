# Take Home Assignment: Mini Notification System [API]
### Author: Megan Lo

## Description
This is the API to support the frontend. This is written in Ruby on Rails.

## Tech Stack
- Framework: Ruby on Rails
- Database: SQLite

## Installation
To begin with, please make sure ruby and rails are installed in your local machine.

## Get Started
1. Open terminal of this repository.
2. To ensure all the gems of this repository are locally installed to your local machine, type in the following:
```bash
bundle install
```
3. Migrating the data from `app/db/seeds.rb` to your local database, type in the following:
```bash
rails db:seed
```
Your terminal would start a new line if the migration is successful.
4. To view the API itself, go to terminal and type the following:
```
rails s
```
And go to your browser and type in `localhost:3000/notifications`.

## Model
<u><b>Notification</b></u>
|Attributes | Datatypes |
|:---------:|:---------:|
| `id` (PK)   |  INT      |
| `title`     |  VARCHAR  |
| `body`      |  VARCHAR  |
| `to_read`   |  BOOLEAN  |
| `created_at`|  INT      |

*Note: `created_at` is automatically created when creating the model in the database. I used this as a timestamp to show when a notification is sent, as seen in UI.

|Attributes | Respresentation |
|:---------:|:-----------|
| `title`    | the title of a notification |
| `body`      | the message content of a notification |
| `to_read`   | display the read status of a notificaton - `true` means the notification has been read and `false` means the notification has not been read |
| `created_at`| display the time of creation of a notification |

## Frontend Application
- Repo Link: [resilia-takehome-ui](https://github.com/mehmehmehlol/resilia-takehome-ui)


**Note**: This microblog app (also deploy script) is followed the instruction by [Nat Tuck](https://github.com/NatTuck/nu_mart) in CS4550 Web Development.

# Microblog
* [Github repo](https://github.com/NarakuF/microblog.git)
* [Deployed app](http://microblog.guandongliu.com) (**Inactive**)

## Behaviors
### Signup/ Login
  * A new user can sign up with email address.
  * A registered user can login with email address and logout.

*Can be improved by adding username and password in the future.*

### Post messages
  * After logging in, the user can click "New Post" on the top to post new message (title and description required).
  * "New Post" will not show up if the user does not log in.

*Can be improved by adding feature of mention and hashtag in the future.*

### Follow users
  * **Only** after logging in, the user can follow other users (**Follow twice will unfollow**).

### Like messages
  * **Only** after logging in, the user can like other users' messages.
  * implement:
    1. Add likes table to postgreSQL database
    2. Modify schemas (likes, users, messages)
    3. Add helper method in blog.ex and change controller
    4. Add handlebars to deps with *npm*
    5. Modify message show page
    6. Modify js in `assets/js/app.js`

### TODO
* Unfollow
* Like does not work after new message posted

## Deploy
  1. `git clone https://github.com/NarakuF/microblog.git`
  2. Manually set `$DIR` in `./deploy.sh`
  3. run script `./deploy.sh` 

## Reference
To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

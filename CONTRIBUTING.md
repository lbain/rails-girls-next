The site uses middleman, and is published with github pages.

Fork, clone to your local computer. Make sure you've got a branch other than the `gh-pages` branch checked out, then start middleman:

`
cd my_project
bundle exec middleman server
`

Now, go to [http://localhost:4567/](http://localhost:4567/)

Make changes, and commit.

Then:

`
rake build
`

That will compile all files into a 'build' directory, in the same branch as you're working in. (The build directory is ignored in `.gitignore`)

Make sure you've got no uncommitted changes, and then:

`
rake publish
`

Note: If `rake publish` fails, check your current checked-out branch. The process might have switched to the gh-pages branch, and failed before switching back.
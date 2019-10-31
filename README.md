# online_forum
User Online Forum.
1. User can post questions.
2. User can comment on a question.
3. User can reply to a comment.

**Setting up**

1. Untar the file and go to online_forum folder.
```bash
cd online_forum
```

2. Run the following command to install gem dependencies:
```bash
bundle install
```

3. Next, run these commands to migrate records and populate the database with seeds.rb:
```bash
rake db:migrate
rake db:seed
```

4. Next start the server with the following command:
```bash
rails s
```

5. Rails server is up and running now. You can visit the application at https://localhost:3000

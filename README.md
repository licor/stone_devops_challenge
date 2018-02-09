# Stone DevOps Challenge

Hello there Stone Candidates!

This is your first step to enter in the wonderful world of financial market.

## First things first

We should be able to build all your infrastructure with small steps, or even with just one command. So automation and code everywhere!

## The Challenge

We need to know how much you are aligned with us,
to check that we have prepared a little challenge with some checkpoints that you need to reach.

Here is a list of what you will need to complete the challenge:

- A computer with internet
- Free account for <a href="https://goo.gl/1gzFRE" target="_blank">Microsoft Azure</a>, <a href="https://goo.gl/GQRLct" target="_blank">AWS (Amazon Web Services)</a>, or <a href="https://cloud.google.com" target="_blank">Google Cloud</a> or Vagrant

Okay, to the challenge now...

Pretend that you are a **DevOps Engineer at Stone Co.** and your manager has designated you to help a new development team that will work in a product for the company.

After a few meetings with your new team, you have decided to use **Jenkins as your CI/CD tool**, your team chose to use Node.js with React as the official tech stack.

You are not sure on which cloud service you will use yet(that's why you need a free account of Azure or AWS, it's time to choose!)
Your team **needs a staging environment** ready to test their first features.

Now that you have a hint of what your team needs, let's move forward.

Once you clone this repo, you will note that we have a `source` folder, inside that folder you will find a  simple react application.

What you must know about the app:

 1. `npm install` downloads the dependencies of the project.
 2. `npm start` runs the application.
 3. `npm test` runs the application tests.
 4. `npm test -- --coverage` (yes, with duplicated `--`) runs the coverage and generates a `/coverage` folder with all the data.
 5. `npm build` will build the application for the production environment.

### Checkpoints

Here are some of the checkpoints to guide you through this challenge, you **don't need to do all of them**, but do as much as you can. They **are not** in any particular order, use your analytical skills to prioritize them.

- [ ] You must deploy a Jenkins application on any cloud service you chose.
- [ ] Your Jenkins server must be public so we can access with a user that you will provide (with administrator privilege please!).
- [ ] You must use slaves to run your builds on Jenkins.
- [ ] You must create a Jenkins job that will deploy your app.
- [ ] Your job must use continuous integration approach.
- [ ] Continuous Deployment will be a plus.
- [ ] You might want to use Docker to run your application, if you choose this way it will be a plus, we like containers ;)
- [ ] All tasks should be done with some IaC Tool (Ansible , Puppet, Bolt, Chef, Terraform...).
- [ ] We want to change the default user and password for Jenkins.
- [ ] You can use any opensource lib, but you need to explain why you choose that one and references that on docs.
- [ ] Docs Docs Docs. We know that writing docs its not the coolest thing ever, but we need to know how to run your scripts. So documentation will be evaluated in the same way as your code.

#### Advanced

- [ ] Deploy a SonarQube server to run static code analisys.
- [ ] Report code coverage on SonarQube
- [ ] Build one of your own opensource application builted in Python, Go, Elixir, C#, Java or Node!

### When you're done...

Once you have finished, you must send an email to your contact at StoneCo with the following information:

- [ ] Github repository URL
- [ ] Jenkins URL with user and password (we might want to take a look in your job).
- [ ] Published app URL.
- [ ] In case you did the advanced features, the SonarQube URL.

### Useful Tips

- Ansible
- Continuous Delivery
- Docker
- Puppet
- Makefile
- CentOS
- SonarQube
- `sonar-project.properties`
- Coveralls
- Heroku

### Questions?

If you have any questions, please send an email to your contact at Stone that we will reply as fast as we can :)

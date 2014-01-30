# Portfolio Page

## Content

No need to go crazy with your personal site. Maybe a jQuery animation here and there if it tickles your fancy.

 Include:
* A personal summary
* A list of your projects with short descriptions
    * Use the descriptions from your résumé
    * For each project include a live link and a link to its Github repo
    * Don't forget the demo login info if needed
* Easy access to your email (e.g. a link at the bottom of your personal summary)
* Links to your blog / Twitter / etc if they're well maintained and show your interest in the web/tech.

## Publishing

**1. Deploy to Heroku**

Push the git repo to a Heroku app. You can also use Amazon S3, Github pages, or whichever hosting service you prefer. A simpler hosting service may not require setting up Pingdom (see below).


**2. Register a domain**

We recommend [namecheap.com][namecheap] for registering domains.    

[namecheap]: http://www.namecheap.com/


**3. Set up a CNAME**

Canonical names make your hostname point to another. You want www.mycoolurl.com to point to www.myuncoolurl.herokuapp.com.


 On namecheap.com:    
1. Log in.
2. Hover over "My account" and click "manage domains".
3. Click on your domain.
4. Click "All Host records" in the blue menu on the left.
5. In the "www" row
    * Enter the URL you want to point to under the "IP Address/URL" column.    
    * Select CNAME (Alias) under "Record Type".    
6. Click "Save Changes".

 In your terminal    
1. Navigate to the directory that holds your portfolio's repo.
2. Run "heroku domains:add www.mycoolurl.com".

More detailed instructions:
[namecheap.com setup][namecheap-tutorial]    
[heroku setup][heroku-tutorial]    

[heroku-tutorial]: https://devcenter.heroku.com/articles/custom-domains
[namecheap-tutorial]: http://www.namecheap.com/support/knowledgebase/article.aspx/1031/2/


**4. Set up Pingdom**

Pingdom pings a URL at regular intervals. This is originally intended to detect network breakdowns quickly. If Pingdom gets a 404 from the URL you set it to, it'll notify you that the site is down.    

Another use is keeping your Heroku app wound up. When no one visits your app for a while, Heroku saves itself server space and winds it down (this is also to encourage you to buy Heroku's premium services). This means the next time someone visits your page it'll be *very* slow to load. To avoid this, set up Pingdom so that Heroku is regularly handling requests to your site.

Go to [Pingdom.com][pingdom] and sign up for a Pingdom Personal Account. Then set up a check for your portfolio URL.    
You'll probably want to set this up for your projects too. Pingdom grants you one free check per account. If you want to keep using Pingdom you'll have to open another account using a different email address. There is also [New Relic][new-relic]. New Relic has more functionaliy so it takes a little extra time to set up.

[pingdom]: https://www.pingdom.com/signup/
[new-relic]: http://newrelic.com/


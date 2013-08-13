# Portfolio Page

## Content

No need to go crazy with your personal site. Maybe a jQuery animation here and there if it tickles your fancy.

 Include:
    * A personal summary
    * A list of your projects with short descriptions
        * Pull the descriptions from your résumé
        * For each project include a live link and a link to its Github repo
    * Easy access to your email (e.g. a link at the bottom of your personal summary)
    * Links to your blog / Twitter / etc if they're well maintained

## Publishing

**1. Deploy to Heroku**

Push your git repo to a Heroku app.


**2. Register a domain**

We recommend [namecheap.com][namecheap] for registering domains.

[namecheap]: http://www.namecheap.com/


**3. Set up a CNAME**

Canonical names make your hostname point to another. You want www.mycoolurl.com to point to www.myuncoolurl.herokuapp.com.

[namecheap.com setup][namecheap-tutorial]    
[heroku setup][heroku-tutorial]

[heroku-tutorial]: https://devcenter.heroku.com/articles/custom-domains
[namecheap-tutorial]: http://www.namecheap.com/support/knowledgebase/article.aspx/1031/2/

 On namecheap.com: 
    1 Log in.
    2 Hover over "My account" and click "manage domains".
    3 Click on your domain.
    4 Click "All Host records" in the blue menu on the left.
    5 In "www" row
        * Enter the URL you want to point to under the "IP Address/URL" column.
        * Select CNAME (Alias) under "Record Type"
    6 Click "Save Changes".

 In your terminal
    1 Navigate to the directory that holds your portfolio's repo.
    2 Run "heroku domains:add www.mycoolurl.com".
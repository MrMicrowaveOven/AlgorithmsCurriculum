# Portfolio Page

## Content

No need to go crazy with your personal site. Maybe a jQuery animation here and there if it tickles your fancy.

 Include:
* A personal summary - this will be very similar to your ["personal pitch"][personal-pitch]
* A nice, well-lit picture of you. In NY, the one in the progress tracker is perfect
* A list of your projects with short descriptions
    * Use the descriptions from your résumé
    * For each project include a live link and a link to its Github repo
* Easy access to your email (e.g. a link at the bottom of your personal summary)
* Links to your GitHub and LinkedIn
* Link to download your resume PDF
* Links to your blog / Twitter / etc if they're well maintained and show your interest in the web/tech.
* Google analytics so you can see who's looking at your site.
    * Send each company a unique query string so you can track which ones are visiting your page.
    * You'll find this under Audience > Overview > View Full Report.
    * The Behavior Flow feature will tell you which parts of your site they're looking at most.

[personal-pitch]: ./personal-pitch.md

## Design

  Use a template so you don't have to design anything. Here are some of the reasons why:
  * You're a web developer, not a web designer. 
  * HR screeners who see an ugly/poorly designed portfolio site may reject you based purely on that (dumb, but it happens). Their standards for web design quality are influenced by the sites they use most often, which are usually websites that have whole design teams behind them. 
  * You'll save a lot of time. 
  * Might feel like "cheating", but it's not because the technical people who might be able to tell that you used a template will know that you're a web developer and not a designer, do they're not expecting you to come up with a good design on your own.

  For free templates check out
  * [BlackTie][blacktie]
  * [HTML5 UP][html5-up]
  * [Phuocub][phuocub]

[blacktie]: http://www.blacktie.co/
[html5-up]: http://html5up.net/
[phuocub]: http://phuocub.com/2013/09/free-html5-css3-templates-free-download/

  For paid templates ($15-$40) check out
  * [themeforest][themeforest]

[themeforest]: http://themeforest.net/search?utf8=%E2%9C%93&term=personal


## Publishing

**1. Deploy to Github pages**

Look into setting up a CNAME record to make www.firstnamelastname.com redirect to your Github page.


**2. Register a domain**

We recommend [namecheap.com][namecheap] for registering domains.    

[namecheap]: http://www.namecheap.com/


**3. Set up a CNAME**

Canonical names make your hostname point to another. You want www.mycoolurl.com to point to myusername.github.io.


*On namecheap.com:*
 
0. Log in.
0. Hover over "My account" and click "manage domains".
0. Click on your domain.
0. Click "All Host records" in the blue menu on the left.
0. In the "www" row
    * Enter the URL you want to point to under the "IP Address/URL" column.    
    * Select CNAME (Alias) under "Record Type".    
0. Click "Save Changes".

More detailed instructions:    
[namecheap setup][namecheap-tutorial]
[namecheap-tutorial]: http://www.namecheap.com/support/knowledgebase/article.aspx/1031/2/


## Past Examples

For your inspiration here are some examples from past alumni.

* [Dean Hu][dean]
* [Eric Savadian][eric]
* [Konrad Dudziak][konrad]
* [Sarah Mogin][sarah]
* [Jose Garza][jose]
* [Teo Dell'Amico][teo] (used a paid template).

[dean]: http://www.deanhu.com/
[eric]: http://ericsavadian.com/
[konrad]: http://www.konrad-dudziak.com/
[sarah]: http://www.sarahmogin.com/
[jose]: http://www.jmgarza.info/#about-me
[teo]: http://www.dellamico.com

## Quick hacks

To demo some HTML/CSS/JS fast, there's [HTML Preview][html-preview].
[html-preview]: http://htmlpreview.github.io/

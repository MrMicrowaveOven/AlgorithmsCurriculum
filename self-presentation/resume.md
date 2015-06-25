# Preparing your Resume
Every student coming out of App Academy is much better in practice than they
look on paper. The goal here is to close that gap.    

No one likes opening Word documents. When your résumé is done, export it to a
PDF.    

Check out Gayle Laakmann McDowell's [model résumé][glm-résumé]. At the bottom
there's a template to make your own résumé too. Gayle Laakman McDowell is the
author of [Cracking the Coding Interview][cracking-interview].

Here's one [example][non-tech-résumé-1] inspired from a student who did not
have a tech background and here's [another][non-tech-résumé-2]. Here are some
[templates][drive-templates] to get you started. **Change the font, color
scheme, and layout before using them**. Employers do not like seeing similar
résumés.

[glm-résumé]: http://www.careercup.com/resume
[cracking-interview]: http://www.crackingthecodinginterview.com/
[non-tech-résumé-1]: ./non-technical-resume.pdf
[non-tech-résumé-2]: ./non-technical-resume2.pdf
[drive-templates]: https://drive.google.com/open?id=0B3noREts_wUyMFZHWVhvcUUtU1E&authuser=0
[json-resume]: ./json_resume.md

# Layout
* ONE PAGE ONLY
* Lots of whitespace


# Content

In the world of people, having a diversity of interests and experiences is a
beautiful thing. In the world of tech recruiting, expertise is much more
valuable. If you had various non-tech jobs before App Academy, choose them
carefully so you don't spread yourself thin.    
 
You don't want to leave out large chunks of time either. In general you can
include roles you held for over a year. Keep in mind that these become less
relevant as you go further back in time. If your previous job was not
tech-related, you need an extra good answer to anyone who asks you why you're
making this transition. One of their concerns will be that you're only in it
for the money.    

## Relevant Links

* Github
* Portfolio Site
* LinkedIn

Bonus (if they're good)

* Tumblr
* Twitter
* Quora

## Skills

List these skills, and any other relevant ones.

* Ruby
* Ruby on Rails
* JavaScript
* jQuery
* Backbone.js
* SQL
* Git
* HTML
* CSS

Don't try to organize your skills by proficiency. Ie. Don't do this:    
    Proficient: Ruby, Rails, JS    
    Familiar: SQL, Backbone

 That makes you look less confident. However it's ok to do this:    
    Ruby, Rails, JS, Backbone, C (learning)

## Technical

**What to Include**

Your résumé should highlight three projects you worked on. Two projects is ok
if they're both good. At four, you're leaving it up to chance which projects
employers look at and which they ignore.

The three projects should be:

0. A Backbone-on-Rails app to show you know the full stack
0. A fun browser game for non-technical reviewers to appreciate (asteroids or snake, or better yet, a new game you've made that makes your resume different from other a/A grads)
0. A complex project for technical reviewers that shows strong Object-Oriented
  Design skills.

The first and second **must** be deployed and available to view online. Otherwise
they aren't serving their purpose. The third should include a detailed Readme
that links to the neatest parts of the code.

**Selling your Projects**

Your projects are one of your biggest selling points so sell them well. First,
don't make employers scan your Github profile to find each project you list on
your résumé. Provide a direct link next to each project. Second, don't just
list every library you used. That's boring. Only indicate the main ones like
Rails and Backbone, and the unexpected ones like HTML5's Canvas. Finally, what
matters the most to employers are the features you built and the problems you
solved to build them. Any time you had to sit back and think about a feature
before implementing it, you were solving a problem. Try to think of at least
two cool solutions you came up with for each project.

To indentify cool problems you solved, make a list of five neat features in
your app. Step through the code that powers each feature. At every step,
consider whether you could have built things differently. If looking back you
find that there were actually different ways to do it, that's a sign that you
solved an interesting problem.

To get you brainstorming:    

* Did you find some clever way to DRY up your code?    
* Did you bootstrap some data to avoid extraneous AJAX requests?
* Did you make some tough choices in your database schema?
* Did you use cookies to store anything other than a session token?
* Does your Javascript use any math to resize something in the DOM?    
* Did you use a library in a way that its author probably didn't anticipate?    
* Do you have any data that's nested one degree deeper than usual?    
* Did you override a Rails or Backbone.js method? (eg. Model#parse or Model#as_json)    
* Do your ActiveRecord models run any custom SQL queries?    
* Did you make any trade-offs related to performance, eg. store information that's costly to compute?    
* Are you doing any caching?    
* Do you make AJAX requests to any unexpected routes?    
* Did you write a custom CompositeView class with a recursive #remove method?    
* Does your chess game make a recursive deep_dup to validate moves without modifying the game state?
* Do your chess pieces inherit from a Slideable and Steppable class?

When answering these questions, the key is to point out features you built that went above and beyond the basic requirements.  On your resume, you'll use these features as bullet points.  Consider the following 

*Allows users to log in* 

vs

*Custom authentication using BCrypt overrides User#password= method to store secret hash instead of plain text.*

In the first example, the quality of the login process is ambiguous.  The second example describes a specific feature that makes the site sound more intesting, and suggests a that the designer is a capable developer.  


*Caution:*

* Students often use the past tense to describe each solution, eg. "Overrode
  Backbone's default Model#parse method to..." It's less exciting if it's in
  the past. Use the present tense in the third person (ie. your project
  itself). "Overrides Backbone's default Model#parse method to..."
* Look up the proper spelling and capitalization for the technologies you
  mention.

## Work

The difference between a compelling work history and a boring one is whether you
have identified the *results* of your work.

Lucky for you most work histories out there are in the boring category.
Candidates merely go through past jobs and list the responsibilities they had
at each one. That's basically useless because those responsibilities only make
sense to someone who knows how the company actually worked. Your reader cares
about success, not process.    

In other words employers care about the outcomes of what you did at past jobs.
Someone who can talk about outcomes is someone who a) made a difference at
their job, however small, b) cares about results, and therefore c) is likely to
produce results at their next job.    

Results don't have to be achievements. You don't have to oversee a company
turnaround or be named employee of the month for a year straight to earn a
selling point. Simply describing something that sounds like success is a big
plus. Consider the following blurbs.    

*Wrote scripts to test new product before shipping.*    

vs.    

*Wrote scripts to test new product before shipping. Achieved one test per feature, resulting in bug-free launch.*    

Who knows if that's a meaningful benchmark? Maybe there weren't that many
features. Or maybe the product still had bugs and they just didn't turn up
during the launch. The key here is that you get to frame it. Even when all you
did was "just your job", doing just your job often results in something akin to
success. By describing that succes, you position yourself as a winner and at
the very least make your résumé more interesting. If your readers aren't
impressed, at least they'll be thankful.    

Note: The extra sentence describing results takes more space. Two longer
bullet points that convey success are much stronger than four bullet
points that only describe process (no matter what portion of your
previous job you're leaving out).    


## Education

**App Academy**

Now that you are an App Academy student, selling yourself requires you to sell
employers on the quality of App Academy. You also want to make sure employers
understand you are not a sucker who fell for a get-rich-quick scheme. In your
résumé, mention that App Academy's admissions rate is below 5% and that the
teaching emphasizes coding style and best practices.

**College**

If you took CS-related courses in college, add a "Curriculum Highlights" section
under the name of your degree and list those courses. Linear algebra, statistics,
and Electrical Engineering courses are also relevant here.

Include your GPA if you graduated 5 years ago or less and if it's above 2.5 for a
STEM subject or 3.0 for a non-STEM subject. (Note on GPAs: most employers won't
care about them, but a few will. This is just for them.)

## If you have neither a college degree nor relevant work experience
Many students have graduated from App Academy without a college degree
nor relevant work experience. They are now all employed. It might be
tougher to get through the résumé screening, but the tech industry is
famous for appreciating non-traditional backgrounds.

The key in this case is to make a strong personal impression. You don't
want the reader to come away thinking "OK they can code. But I have no
idea what else to expect from this person." You have to be creative.

* Have you ever done volunteer work?
* Do you have some interesting hobbies that would make you stand out?
* It'll also be important to write enthusiastic cover letters that show
  an interest in what the company does.

If it's the case, you can mention "Left college in good
academic standing for financial reasons / to pursue web development."

## Checklist
Before you submit your résumé for review, make sure you can answer yes
to all these questions.

* Layout
  0. Do your headers take the following order? Projects, Skills, Work History, Education
  1. (List work history first if you were paid to write code.)

* Projects
  0. Do you list three or four coding projects, including one Rails app and
  one Javascript demo (eg. a game)?
  0. Does each project include a link to the Github repo and one to the
  live demo?
  0. Is there a button to login without signing up on any project that uses authentication?
  0. Did you buy a custom domain for your main project?
  0. Do you describe clever solutions you came up with to build each
   project?
  0. Are those solutions described in the third person, present tense?

* Work
  0. Do you describe not just *what* you did at each job but *how well*
   you did it?
  0. Do you provide benchmarks for your own or your teams success?

* Misc
  0. Do you provide a simple list of the technologies you are familiar
   with?
  0. Do you provide contact information and link to your Github?
  0. Does your contact information make it clear you are currently in the
   metro area?
  0. Have you copy/pasted the text into a Google doc that I can edit? (ie. Don't just upload a .doc file)


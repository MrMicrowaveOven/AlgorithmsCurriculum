# JSON Resume

[JSON Resume] is an easy way to produce an adaptible and professional-looking resume. We recommend that you use it. It'll save you a lot of headaches about formatting, file types, and the like. Plus, it'll make you look like you know how to Internet.

This is what the underlying format looks like:
```
{
  "basics": {
    "name": "John Doe",
    "label": "Programmer",
    "picture": "",
    "email": "john@gmail.com",
    "phone": "(912) 555-4321",
    "website": "http://johndoe.com",
    "summary": "A summary of John Doe...",
    "location": {
      "address": "2712 Broadway St",
      "postalCode": "CA 94115",
      "city": "San Francisco",
      "countryCode": "US",
      "region": "California"
    },
    "profiles": [{
      "network": "Twitter",
      "username": "john",
      "url": "http://twitter.com/john"
    }]
  },

  ```
  And so on. It's pretty straightforward. And you're comfortable with JSON. Right? Right.

  There's a [CLI you can use], but the JSONResume team has very generously created a [web app] that you can enter in your resume data into and see it rendered in real-time. This is nice and allows you to quickly enter in data, as well as try out different resume themes. We are going to recommend you use this.

  *In short: use the [web app].*

  Enter in your resume through the interface or through JSON. You can press the buttons on the left side to toggle between HTML and JSON displays. Save a copy of the JSON somewhere to your computer in case you ever need to edit your resume or save it in a different format.

  If you make an error in your JSON syntax, the web app will break and not correctly render your resume. If this is the case, you can debug your JSON using a [JSON Linter]. If you try to use the web interface with broken JSON, it'll throw out any of the JSON it doesn't understand.

  **Save often.** This interface will not save your resume unless you manually click save.

  Once you've got a JSON copy of your resume, it's easy to turn it into a PDF, a web page (for your github.io), or even a text document. Just use the different themes as appropriate and nick the HTML using Chrome or by inspecting the source. One thing you will want to do is adapt the HTML/text it produces to create a section for your projects, with appropriate links. Make sure this section is at the top, and follow all of the relevant instructions in the job search curriculum. You're a web developer now, so you should be comfortable with this task.
  
  Saving it to a PDF is easy. If you use a Mac and call print, you can save the page as a PDF file. You'll need a PDF version for most companies.

  # Outline
  Below is an outline of the JSON we recommend you use for your own resume. Fill in your details as appropriate. Easiest would be to copy and paste this into the [web app] (click on the JSON link on the left side and copy and paste this code in). We've included a list of skills and a description of App Academy that we recommend you use.

  ```
{
  "basics": {
    "name": "Your name",
    "label": "Software Developer",
    "picture": "https://thebestchapter.files.wordpress.com/2012/03/albert_einstein_1947_square_cropped.jpg",
    "email": "you@youremail.email",
    "phone": "555-555-5555",
    "website": "http://yourpage.github.io",
    "summary": "A web developer with a penchant for buggery",
    "location": {
      "address": "1061 Market St.",
      "postalCode": "94103",
      "city": "San Francisco",
      "countryCode": "US",
      "region": "California"
    },
    "profiles": [
      {
        "network": "Github",
        "username": "My-Username",
        "url": "https://github.com/my-username"
      },
      {
        "network": "LinkedIn",
        "username": "My Name",
        "url": "https://www.linkedin.com/in/whateveryourlinkedinis"
      }
    ]
  },
  "work": [
    {
      "company": "The Place I Worked",
      "position": "My Job Title",
      "website": "website.glom",
      "startDate": "June 2014",
      "endDate": "January 2015",
      "summary": "Responsible for widget output and maximization of company-wide through-fares",
      "highlights": [
        "Increased sales by 300% for two straight quarters by doubling volume of sales calls and strengthening the employee training process",
        "Blackmailed the CEO into making me company chairman",
        "More SPECIFIC, MEASURABLE accomplishments. Ideally, not just describing what you did. Describe things you *accomplished*, over and above what your job description entailed"
      ]
    }
  ],
  "volunteer": [
    {
      "organization": "RedCross",
      "position": "Administrator",
      "website": "https: //redcross.com",
      "startDate": "January 2015",
      "endDate": "June 2015",
      "summary": "Saved lives",
      "highlights": [
        "Led a blood drive. I am now completely exsanguinated."
      ]
    }
  ],
  "education": [
    {
      "institution": "App Academy",
      "area": "Web Development Bootcamp",
      "studyType": "",
      "startDate": "March 2015",
      "endDate": "",
      "gpa": "",
      "courses": [
        "App Academy is a world-class 3-month immersive coding school with a <5% acceptance rate. Its curriculum covers full-stack web development, algorithms, and coding best practices."
      ]
    }
  ],
  "awards": [],
  "publications": [],
  "skills": [
    {
      "name": "Ruby",
      "level": "",
      "keywords": []
    },
    {
      "name": "Ruby on Rails",
      "level": "",
      "keywords": []
    },
    {
      "name": "JavaScript",
      "level": "",
      "keywords": []
    },
    {
      "name": "SQL",
      "level": "",
      "keywords": []
    },
    {
      "name": "HTML/CSS",
      "level": "",
      "keywords": []
    },
    {
      "name": "Git",
      "level": "",
      "keywords": []
    },
    {
      "name": "Backbone.js",
      "level": "",
      "keywords": []
    }
  ],
  "languages": [],
  "interests": [],
  "references": []
}
```


[JSON Resume]:https://jsonresume.org/themes/
[CLI you can use]:https://jsonresume.org/getting-started/
[web app]:http://registry.jsonresume.org/#mu
[JSON Linter]:http://jsonlint.com/

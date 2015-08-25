# Code Intensive

The point of this project is to impress a technical screener/interviewer. In most cases, it won't have a front-end and won't be accessible to someone without a technical background as the only thing to show will be the GitHub repo. You should pick one of ActiveRecordLite, RailsLite, or Chess for this and polish it. You're a much better developer now than when you wrote these programs, so there will be low-hanging fruit.

These are the things you need to address for any of the 3 projects you pick:
  * README - make sure it has:
    * Description/instructions on how to use
    * List of techs/languages/plugins/APIs used
    * Technical implementation details for anything worth mentioning (basically anything you had to stop and think about before building)
      * Include links to the neatest parts of the code
      * Include screenshots of anything that looks pretty
      * A few example ReadMe's are linked from [here][here]
    * To-dos and future features
  * Make sure there's no .DS_Stores
  * Go through the whole thing and refactor everything. There will be a lot of obvious things to refactor since you're a much better developer now.


[here]: https://github.com/appacademy/job-search-curriculum/blob/master/self-presentation/github.md
  
Then there are specific things to do for each project. 

### ActiveRecordLite
  * Remove all references of this being a class project
    * Remove everything about phases - filenames (in /lib and /spec) and comments within each file.
  * Remove /lib/00\_attr\_accessor.rb object. That was a warmup in metaprogramming and it's not actually used in the project
  * Once you remove phases, organize files. Still have multiple files that each monkeypatch or extend `SQLObject`.
  * Explain in README how somebody would go about using this instead of the real ActiveRecord
  * When you talk about this project, and in your README, don't say that it's a clone of ActiveRecord to understand its functionality. Instead, own it. Say something like, "An ORM inspired by the functionality of ActiveRecord"
  
### Rails Lite
  * Remove all references of this being a project in class
    * Remove everything about phases (filenames, folders, comments in files)
  * Organize files - you should only have one `ControllerBase` class, not an inheritance chain, but still have it split up over multiple files if it's too big
  * Explain in README how somebody would go about using this instead of Rails
  * Same as ActiveRecordLite, when you talk about it in your README or resume, don't say it's a clone of Rails' functionality to understand it better. Instead, own it, and say something like this: "Web server MVC framework inspired by the functionality of Ruby on Rails"
  
### Chess
  * Have only 1 class per file - no matter how small the class.
    * Name the files the same as the class (camel_cased).
  * Organize into /lib and /lib/pieces
  * Explain in README how someone would go about downloading and running this.
  
  



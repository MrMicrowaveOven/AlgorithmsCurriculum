# Steps

* Install profiler, eg. rack-mini-profiler. This helps you find the most
  costly steps instead of blindly optmizing.
* Find most costly steps in profiler and try to fix those
* If a query is expensive and you don't know why:
  * Open the DB console directly and run EXPLAIN on that query.
  * Explain goes into detail about the implementation and cost of each
    part of a query.
  * Sequential scan is bad. Usually a sign you want to use an index.
* When you're satisfied that your SQL is as efficient as possible, start
  thinking about caching.
* Look for jobs that can be put in the background.


# How to Crush Technical Interviews

0. Prep (5 mins)
  1. Make sure students have paper and pen/pencil. (Write on board beforehand.)

1. The Goal: The goal is
  1. Be aware of the different types of interviews
  2. To walk out of this lecture with some steps you WILL actually take when you walk into an interview.
  3. Give you information that most CS students don't get coming out of college.

1a. TEST: Give them the problem beforehand.  See how they do on paper. (5 mins).
  1. Show of hands, who thinks they have a solution.
  2. We'll test this later.

2.  We're going to cover some things that sound like you'd know to do and make sense in hindsight, but they're notoriously tricky to apply and stick to.

3. Good ol’ fashioned Interview (30 min)
  1.  Overview. (1 min)
  2. Tips:
    a. Demonstrate what you know
    b. Admit what you don't know (circle of competence).
  3.  Exercise with partners.  Break up into partners. (1 min)
  4.  Point is not to finish the problem.  Don't rush.  Just get a sense.

  5.  Listening partner, do NOT try to solve the problem for them. Only jump in if they pause for a long time or get stuck.  You'll have a chance to solve the next problem. (1 min)
    1. Don't worry about getting it wrong.

  6.  Question one (5 mins):
    1. What happens when I type google.com into my web browser and hit enter? (4 mins)
    2. Feedback (1 min)

  7.  Switch partners (5 mins):
    1. What are the different ways you can make private variables in javascript? (4 mins)
    2. Feedback (1 min)

  8. Show of hands, who realized areas they were shabby on? (3 mins):

3. Pair Programming / Build something while they watch next to you (4 mins)
  1. Overview (4 mins): Learnist did this, Pivotal does this.  Talk about process companies take.
  2. Won't cover, this is what App Academy was.

4. Design Problems (20 mins)
  0. Overview: Learnist, Goodreads, and Minerva did this. (3 mins)
  1. Tips:
    1. Clarifying questions are good .
    2.
  2. Individual: Design the schema for the game "Connect Four" on paper alone.  We also want arbitrary board size (of connect 5 and 6...etc.) and saving games. (5 mins).  E.g. tables, columns, etc.
    1. Give time for clarifying questions.
  2a TEST.  Take the google request and represent it with boxes and lines.

  3. Compare to partner or class (3 minutes).
  4. Show boxes, lines, and database cylinders
    1. Drawing boxes and lines is big
  5. Get a volunteer to come up and draw on the board
  6. Other example problems: Design the BART system schema, schema for Ad Server (1 min), how would you set up a rails app that serves 5 million people?.

Break for 5 (5 mins)

5. Whiteboard Problem (65 mins)
  1. Can-you-code problems (2 mins)
    1. These are usually in initial interviews.  I have actually gotten fizzbuzz
    2. Hired.com and apparently angel.co have some good ones that you can practice if you sign up.
    3. Sometimes they require 2 years of experience. See if that's really the case.
    4. Make a note to try out Hired (it's also a cheap way of getting interviews if you pass).

  2. Can-solve-problems problems (in person)
    1. Tips: I'm going to cover these quickly, ask questions at the end. (1 min)
      1. We'll apply as we go.
      2. Can approach in other ways
    2. We're going to apply these as we go.

    3. Individual exercise (40 mins)
      1.  Singly linked list kth to last question: (3 mins)
        1. You have a linked list ↴ and want to find the kth to last node.
           Write a function kth_to_last_node() that takes an integer k and the head_node of a singly linked list, and returns the kth to last node in the list. (Put this on board BEFORE?).
      2. for tip in tips, we're going to apply them (30 mins)
        0. This is one FRAMEWORK.  You can try other approaches.
        1. Restate the question in different words.  Clarifying questions.
        2.  Come up with sample inputs and outputs? (2 mins)
          1. DRAW ON BOARD
            a. 0, 1, and 2.  k=2 and head_node is really a ()->()->()->()->()caterpillar
        2. Now write out some small examples of sample inputs and outputs (2 mins)
          1. Edge cases.
          1. DRAW ON BOARD
          2. Compare to partner
          3. List on board
        3. CHECK WITH THE CLASS that everyone knows what the function looks like.
          a. Draw signature (kth_to_last_node(3, head_node)) on board,
        4. Write out possible approaches in english (not even pseudocode) (3 mins)
          1. DRAW ON BOARD
        5. Analyze (does it work with samples, space, time tradeoffs) (3 mins)
          1. DRAW ON BOARD
        6. Edge cases? (3 mins)
          1. DRAW ON BOARD
        7. Pseudocode - Pick an approach (2 mins)
          1. DRAW ON BOARD
        8. Real code (4 mins)
          1. DRAW ON BOARD
          2. Interviewers look for small errors and WONT tell you/.
        9. Run through it with your sample small inputs (3 mins)
          1. DRAW ON BOARD
          2. Find bugs
    4. Show of hands, who thinks they have the solution?
      1. Email me afterwards for a solution.
      2. Ask student up, write on board.
    5. Class: List helpful things you did. (4 mins)
      1. Have Shiva (or volunteer) put on the whiteboard.

    6.  Add other example questions (1 minute): determine if a string is a palindrome, SOLVE boggle, solve BART system shortest path and cost, .

    7.  I think we have a test bank, so try to find it if you haven't yet. (1 minute)

    8. Questions (3 mins)

  4. Google-level (optional) (2 mins):
    1. Can you solve problems and do you have a good grasp of CS fundamentals?
    2. Just means extra study.

Find someone to code on board during resources.

5. Pairboarding tips
  1. State the problem to your person.  They can ask clarifying questions.  Make them work and explain it.
  2. Be a bit of a dick.  Don't help them too much.
  3. Give small hints (not array.each)
  4. ??'s

6. Resources (5 mins)
  1. https://github.com/alex/what-happens-when
  2. Interview cake was good
  3.  Find a friend who already works as an Engineer and ask them to whiteboard with you and grab coffee.
    1. "The Workshop" has whiteboards, that's where I've practiced before.
    2. Alumni
7. Reflection (5 mins)
  1. What did you learn here?
  2. Imagine that you're in an interview and you didn't apply it.  What happened?
  3. Fix it.
8. Questions (10 mins)



## Concepts:

### Before you start solving the problem

- Restate the Problem
- State your assumptions about the input
- Run the function on small inputs
- Break down the problem into functions
- If you still don’t understand the problem fully, simplify it.
- Write a roadmap in the top right corner while explaining it

- Ask about writing out helper functions
- Refactor
- Analyze Time and Space performance
- Talk about other Improvements or Tradeoffs



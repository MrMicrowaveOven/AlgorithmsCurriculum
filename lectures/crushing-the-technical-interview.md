# How to Crush Technical Interviews

Part 1:

0. Prep
  a. Print out this page
  b. Put on MIC
  c. Put problem on board
  d. Write that you need pen and paper
  e. Song: https://www.youtube.com/watch?v=8kLjxwDywKU
0. Overview of how the onsite works (5 mins)
  a. What is the schedule of the day?
  b. You go into four different conference rooms, whiteboard
  c. People ask you about yourself at the start...
  d. Four major types of problems, we're going to cover the biggest today and the smaller ones on wendesday.
1. Whiteboard Problem (65 mins)
  1. Can-you-code problems (2 mins)
    1. These are usually in initial interviews.  I have actually gotten fizzbuzz
    2. Hired.com and apparently angel.co have some good ones that you can practice if you sign up.
    3. Sometimes they require 2 years of experience. See if that's really the case.

  2. Can-solve-problems problems (in person)
    1. Individual exercise (40 mins)
      1.  Singly linked list kth to last question: (3 mins)
        1. You have a linked list ↴ and want to find the kth to last node.
           Write a function kth_to_last_node() that takes an integer k and the head_node of a singly linked list, and returns the kth to last node in the list. (Put this on board BEFORE?).
      2. for tip in tips, we're going to apply them (30 mins)
        0. This is one FRAMEWORK.  You can try other approaches.
        1. Restate the question in different words.  Clarifying questions.
          1. Your brain is going to want to try to start to solve the problem.  HOLD IT BACK FOR NOW.  Don't start, you need to make sure you have the full problem.
          2. A clarifying question you need: singly or doubly linked list?
          3. Some companies expect you to ask clarifying questions
        2. Now write out some SMALL examples of sample inputs and outputs (2 mins)
          1. DRAW ON BOARD
            a. 0, 1, and 2.
            b. k=2 and head_node is really a ()->()->()->()->()caterpillar
          2. Edge cases.
          3. DRAW ON BOARD
          4. Compare to partner
          5. List on board
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

    6.  Add other example questions (1 minute): determine if a string is a palindrome, SOLVE boggle (goodreads), solve BART system shortest path and cost...reverse a linked list (angel.co), compare two strings to see how much of the beginning they share (trying to beat linear time is the tough part).

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
7. Reflection (5 mins)
  1. What did you learn here?
  2. Imagine that you're in an interview and you didn't apply it.  What happened?
  3. Fix it.
8. Questions (10 mins)


Part 2:

0. Prep (5 mins)
  1. Make sure students have paper and pen/pencil. (Write on board beforehand.)

1. The Goal: The goal is
  1. Be aware of the different types of interviews
  2. To walk out of this lecture with some steps you WILL actually take when you walk into an interview.
  3. Give you information that most CS students don't get coming out of college.

2.  We're going to cover some things that sound like you'd know to do and make sense in hindsight, but they're notoriously tricky to apply and stick to.

3. Good ol’ fashioned Interview (10 min)
  1.  Overview. (1 min)
  2. Tips (3 mins):
    a. Demonstrate what you know
    b. Admit what you don't know (circle of competence).
  3.  Example questions (2 mins):
    1. What happens when I type google.com into my web browser and hit enter? (4 mins)
    2. What are the different ways you can make private variables in javascript? (4 mins)

4. Pair Programming / Build something while they watch next to you (4 mins)
  1. Overview (4 mins): Learnist did this, Pivotal does this.  Talk about process companies take.
  2. Won't cover, this is what App Academy was.

5. Design Problems (15 mins)
  0. Overview: Learnist, Goodreads, and Minerva did this. (3 mins)
  1. Tips (5 mins):
    1. Clarifying questions are good .
    2. Pictures/shapes, circles are good

  2. Example question (5 mins)
    1. Show of hands: who designed boggle/chess the first day?
    2  Take the google request and represent it with boxes and lines database cylinders.

  3. Other example problems (2 mins): Design the BART system schema, schema for Ad Server, how would you set up a rails app that serves 5 million people?.

Break for 5 (5 mins)


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



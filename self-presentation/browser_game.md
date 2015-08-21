# Browser Game

This portfolio piece is going to be to impress non-technical HR screeners. They won't know any of what's going on under the hood- they just care about seeing something pretty on the screen. The prettier and more user-friendly it is, the more impressive it'll be to them. 

Use either your Asteroids or Snake. Asteroids is a little more impressive than Snake, but it'll also take a little more work to get it to a point where it's presentable. Personalize it and make it pretty (or even better, build a new JS game from scratch and use that). If you decide to build a new game, it should be at least as impressive (technically) as Asteroids or Snake (so something like Super Mario is good, TicTacToe or Towers of Hanoi is not).

Here are the checklists of what it should have:

### Repo
* README
  * Link to live
  * Instructions/how to play
  * List of techs/languages/plugins/APIs used
  * Technical implementation details for anything worth mentioning
    * Basically anything you had to stop and think about before building
    * Links to the code for these (make sure it looks good)
  * To-dos/future features
* No .DS_Stores
* Organize into /assets and /lib

### Live
* Has a landing page/modal with instructions
* Has a HUD (heads-up-display) with lives, score, level?
* Has a game-over modal that displays points, a replay button, and instructions/how to play
* Hosted from your portfolio site on GitHub pages

### Asteroids
  * Controls (this is different from what the instructions asked for, but much more intuitive, which is what we want for HR screeners):
    * Uses left and right arrows to turn ship (can turn in place)
    * Uses up button as "forward" (thrust)
    * Thrusts in the direction it's currently facing
      * Accomplish this by storing a direction as an angle, then for movement, calculate a vector (delta) by applying the thrust to the angle. Then just move the ship by that delta.
  * Doesn't use circles for everything
    * Ship looks like a ship
    * Maybe use sprites for asteroids? At least don't make them all just bland circles
  * Can't win. The game only ends when you lose.
  * Window doesn't jump around when press arrows (if uses arrows for controls)
    * Prevent with `event.preventDefault()`
  * Playing field expands to size of window
    * Use `window.innerHeight` and `window.innerWidth`
    
### Snake
  * Make sure you can do u-turns
    * For example, in a lot of people's games, if you're going up and want to make a u-turn and hit left and down really fast, pressing both buttons within the same render interval, then the snake thinks it's trying to move back onto itself and it won't allow it.
  * Make sure it works fine in small windows
    * Resize your browser to ~960x650 (960 wide), playing field should still fit
    * If document is too big for window, then make sure using arrows (controls) doesn't make the window scroll and bounce around. Prevent this with `event.preventDefault()`
    

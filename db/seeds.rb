# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.create([
  {
    name: 'Light text',
    html: '<h1 class="branded">Lorem Ipsum</h1>
<p>Some nonsense about <span class="branded">Lorem Ipsum</span> and whatnot.</p>',
    css: 'h1 {
  text-align: center;
  letter-spacing: 0.3em;
}

.branded {
  text-transform: uppercase;
  font-weight: 300;

  border-width: 1px 0;
  border-color: black;
  border-style: solid;
}'
  },
  {
    name: 'Neon text',
    html: '<h1>Lorem Ipsum</h1>',
    css: 'body {
  background-color: black;
  text-align: center;
}

h1 {
  display: inline-block;
  color: white;
  font-family: sans-serif;
  font-width: 100;
  transform: skewY(-5deg);
  border: 2px solid white;
  border-radius: 12px;
  padding: 12px 24px;

  text-shadow:
    0 0 6px white,
    0 0 12px purple,
    0 0 24px purple,
    0 0 64px purple;
  box-shadow:
    0 0 4px white,
    inset 0 0 4px white,
    0 0 8px white,
    inset 0 0 8px white,
    0 0 16px purple,
    inset 0 0 16px purple,
    0 0 32px purple;
}'
  },
  {
    name: 'Basic buttons',
    html: '<button class="primary-btn">Primary!</button>
<button class="secondary-btn">Secondary!</button>',
    css: '/**
 * This uses code based on normalize.css
 * License: https://github.com/necolas/normalize.css/blob/master/LICENSE.md
 * It removes variations between different browsers
*/

button {
  font-family: inherit;
  font-size: 100%;
  line-height: 1.15;
  margin: 0;
  overflow: visible;
  text-transform: none;
  -webkit-appearance: button;

  padding: 8px 12px;
  border-radius: 99em;
  cursor: pointer;
  box-shadow: 2px 2px 4px #999;
}

button:hover,
button:focus {
  text-decoration: underline;
}

button:active {
  box-shadow: 0 0 0 white;
}

.primary-btn {
  border: 1px solid #3958AD;
  color: white;
  background-color: #3958AD;
}

.primary-btn:hover,
.primary-btn:focus {
  background-color: #2E468A;
}

.secondary-btn {
  border: 1px solid #595959;
  color: #595959;
  background-color: white;
}

.secondary-btn:hover,
.secondary-btn:focus {
  border-color: #222;
  color: #222;
}'
  },
  {
    name: 'Pastel buttons',
    html: '<button class="yellow-btn">I\'m yellow!</button>
<button class="blue-btn">I\'m blue!</button>',
    css: 'button {
  background-color: white;
  border-width: 0;
  position: relative;
  padding: 8px 16px;
  margin: 24px;
  background-color: transparent;
  cursor: pointer;
}

button::before {
  content: \'\';
  position: absolute;
  inset: -2px 2px 2px -2px;
  border: 1px solid black;
  transition: inset 0.1s;
}

button::after {
  content: \'\';
  position: absolute;
  inset: 2px -2px -2px 2px;
  transition: inset 0.1s;
  z-index: -1;
}

.yellow-btn::after {
  background-color: #F3E17E;
}

.blue-btn::after {
  background-color: #9DB9F6;
}

button:hover::before,
button:hover::after,
button:focus::before,
button:focus::after {
  inset: 0px 0px 0px 0px;
}'
  },
  {
    name: 'Submit button',
    html: '<!-- -->',
    css: '/* I\'m a comment! */'
  },
  {
    name: 'Basic form',
    html: '<form>
  <fieldset>
    <legend>Boring section</legend>

    <label for="username">Username: </label>
    <input type="text" name="username" id="username">

    <label for="password">Password: </label>
    <input type="password" name="password" id="password">
  </fieldset>
  <fieldset>
    <legend>Unnecessary section</legend>

    <label for="word">Your favourite word: </label>
    <input type="text" name="word" id="word">

    <label for="number">Your favourite number: </label>
    <input type="number" name="number" id="number">

    <label for="secret">Tell me a secret: </label>
    <input type="password" name="secret" id="secret">
  </fieldset>
</form>',
    css: '/* TODO: I need more work! */

body {
  display: flex;
  justify-content: center;
  background-color: #3B414D;
  color: white;
  font-family: sans-serif;
}

fieldset {
  margin-top: 1em;
  border: 1px solid white;
  border-radius: 4px;
}

legend {
  font-weight: bold;
  padding: 0.25em 0.5em;
  border: 1px solid white;
  border-radius: 4px;
}

label {
  display: block;
  margin: 1em auto 0.25em auto;
}

input {
  display: block;
  background-color: #647386;
  color: white;
  font-size: 1rem;
  border: none;
  border-radius: 4px;
  padding: 4px;
}'
  },
  {
    name: 'Simple comment',
    html: '<form>
  <label for="comment">Join the discussion:</label>

  <textarea id="comment" name="comment"
            rows="5" cols="32"
            placeholder="Add your comment here"></textarea>

  <button type="submit">Submit!</button>
</form>',
    css: '/* TODO: I need more work! */

textarea {
  resize: none;
  display: block;
}

textarea::placeholder {
  font-style: italic;
}'
  },
  {
    name: 'Simple banner',
    html: '<header>
  <h1>Simple Banner</h1>
  <p>by Someone</p>
</header>',
    css: '/* TODO: I need more work! */

body {
  margin: 0;
}

header {
  background-color: #F4655E;
  text-align: center;

  padding: 1rem;
  margin: 5rem 0;
  position: relative;
}

header:before {
  position: absolute;
  content: \'\';
  left: 10%;
  width: 80%;
  top: -10%;
  height: 120%;

  border: 4px solid black;
}'
  }
])

# TODO: Only update CSS on input
# Currently, the below reloads the images *every* keystroke
#  {
#    name: 'Profile photos',
#    html: '<div class="profile-card">
#  <img src="https://source.unsplash.com/sibVwORYqs0/576x384" alt="">
#  <p></p>
#</div>
#<div class="profile-card">
#  <img src="https://source.unsplash.com/AJIqZDAUD7A/600x400" alt="">
#  <p></p>
#</div>
#<div class="profile-card">
#  <img src="https://source.unsplash.com/76kTuuilZTI/370x556" alt="">
#  <p></p>
#</div>
#<p>All photos from <a href="https://unsplash.com/">Unsplash</a>.</p>',
#    css: 'img {
#  width: 56px;
#  height: 56px;
#  border-radius: 50%;
#  object-fit: cover;
#}'
#  }

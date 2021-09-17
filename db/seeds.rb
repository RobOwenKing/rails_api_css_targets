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
  border: 1px solid #3958ad;
  color: white;
  background-color: #3958ad;
}

.primary-btn:hover,
.primary-btn:focus {
  background-color: #2e468a;
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
  background-color: #f3e17e;
}

.blue-btn::after {
  background-color: #9db9f6;
}

button:hover::before,
button:hover::after,
button:focus::before,
button:focus::after {
  inset: 0px 0px 0px 0px;
}'
  },
  {
    name: 'Simple search',
    html: '<form>
  <input type="text" placeholder="Search..." name="search">
  <button type="submit">
    <i class="fa fa-search"></i>
  </button>
</form>',
    css: '* {
  box-sizing: border-box;
}

form input,
form button {
  float: left;
  font-size: 1rem;
  padding: 2px 8px;
}

form input {
  border-radius: 4px 0 0 4px;
  border: 2px solid #aaa;
}

form button {
  border-radius: 0 4px 4px 0;
  border: 2px solid #133B96;
  background-color: #133B96;
  color: white;
}

@media (prefers-reduced-motion: no-preference) {
  input {
    width: 6rem;
    transition: width 0.2s
  }

  input:focus {
    width: 16rem;
  }
}

@media (prefers-reduced-motion: reduce) {
  input {
    width: 16rem;
  }
}'
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
  background-color: #3b414d;
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

  <div class="comment-positioning">
    <textarea id="comment" name="comment"
              rows="5" cols="32"
              placeholder="Add your comment here"></textarea>

    <button type="submit">Submit!</button>
  </div>
</form>',
    css: '.comment-positioning {
  position: relative;
  width: min-content;
  height: min-content;
}

label {
  font-size: 1rem;
  font-family: sans-serif;
}

textarea {
  font-size: 1rem;
  border: 1px solid black;
  margin-top: 4px;
}

button {
  position: absolute;
  bottom: -0.5rem;
  right: -1rem;
  font-size: 1rem;
  border: 1px solid black;
  background-color: #2B7359;
  color: white;
  padding: 4px 8px;
  cursor: pointer;
}

button:hover {
  background-color: rgb(34, 89, 69);
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
  background-color: #f4655e;
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
  },
  {
    name: 'Profile photos',
    html: '<h1>Meet Our Team</h1>
<a href="https://unsplash.com/@armedshutter" class="profile-card">
  <img src="https://source.unsplash.com/sibVwORYqs0/576x384" alt="black haired man making face">
  <div class="profile-text">
    <h2 class="text-pink">Ayo Ogunseinde</h2>
    <p>Team member</p>
  </div>
</a>
<a href="https://unsplash.com/@heftiba" class="profile-card">
  <img src="https://source.unsplash.com/O3ymvT7Wf9U/246x369" alt="woman standing near blue steel gate">
  <div class="profile-text">
    <h2 class="text-blue">Toa Heftiba</h2>
    <p>Team member</p>
  </div>
</a>
<a href="https://unsplash.com/@akramhuseyn" class="profile-card">
  <img src="https://source.unsplash.com/76kTuuilZTI/370x556" alt="russian blue cat on white textile">
  <div class="profile-text">
    <h2 class="text-pink">Akram Huseyn</h2>
    <p>Team member</p>
  </div>
</a>
<p>All photos are by the named artists, if not their own profile pictures.</p>',
    css: '.profile-card {
  display: flex;
  align-items: center;
  margin: 1em;
  text-decoration: none;
}

img {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  object-fit: cover;
  filter: grayscale(0.6);
}

.profile-card:hover img {
  filter: grayscale(0);
}

.profile-card:hover .text-pink {
  color: #f15486;
}

.profile-card:hover .text-blue {
  color: #106c8f;
}

.profile-text {
  margin-left: 0.5rem;
}

.profile-text h2,
.profile-text p {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}

.profile-text h2 {
  color: #000;
}

.profile-text p {
  color: #333;
}'
  },
  {
    name: 'Neumorphic buttons',
    html: '<div class="container">
  <h1>Neumorphism</h1>
  <p>TODO</p>
  <p>TODO</p>

  <nav>
    <i class="fa fa-arrow-left"></i>
    <i class="fa fa-arrow-right"></i>
  </nav>
</div>',
    css: 'body {
  font-family: sans-serif;
  background-color: #383638;
  color: #fefefe;
}

.container {
  width: 300px;
  margin: auto;
}

p {
  opacity: 0.7;
}

nav {
  display: flex;
  justify-content: space-between;
}

nav .fa {
  font-size: 1.5rem;
  opacity: 0.9;
  padding: 0.5rem;
  border-radius: 50%;
  box-shadow: 2px 2px 4px #181618,
    -2px -2px 4px #585658;
  cursor: pointer;
}

nav .fa:hover {
  box-shadow: 2px 2px 4px #585658,
    -2px -2px 4px #181618;
}'
  },
  {
    name: 'Simple cards',
    html: '<h1>Where will you go?</h1>
<div class="cards">
  <div class="destination-card">
    <img src="https://source.unsplash.com/rNLucmInugQ/326x184" alt="moai, monumental human head statues on Rapa Nui">
    <div class="card-text">
      <h2>Rapa Nui</h2>
      <p>Lorem ipsum Rapa Nui sit amet consectetur adipisicing elit. Vitae, cumunque. <a href="https://unsplash.com/photos/rNLucmInugQ">See more</a>.</p>
    </div>
  </div>
  <div class="destination-card">
    <img src="https://source.unsplash.com/xcPw1-5OHTk/500x334" alt="old and modern high-rise buildings in Warsaw lit up at night">
    <div class="card-text">
      <h2>Warsaw</h2>
      <p>Hic Warsaw, ipsam suscipit mollitia perferendis harum pariatur. Sunt, recusandae. <a href="https://unsplash.com/photos/xcPw1-5OHTk">See more</a>.</p>
    </div>
  </div>
  <div class="destination-card">
    <img src="https://source.unsplash.com/DDiLYt_F88w/555x400" alt="the Taj Mahal and its reflection in front of a sunset-tinged sky">
    <div class="card-text">
      <h2>Agra</h2>
      <p>Iure, voluptatem consectetur soluta perspiciatis minus aut Taj Mahal. Necessitatibus. <a href="https://unsplash.com/photos/DDiLYt_F88w">See more</a>.</p>
    </div>
  </div>
</div>',
    css: '.cards {
  display: flex;
  flex-wrap: wrap;
}

.destination-card {
  text-decoration: none;
  color: black;
  border: 1px solid black;
  padding: 8px;
  margin: 0 12px 12px 0;
  max-width: 300px;
  height: min-content;
  position: relative;
  background-color: white;
}

.destination-card:before {
  position: absolute;
  content: \'\';
  left: 0;
  width: 100%;
  top: 0;
  height: 100%;
  z-index: -1;

  border: 1px solid black;
  transform: rotate(-2deg);
}

img {
  width: 100%
}

.destination-card h2 {
  margin: 0 auto;
  text-align: center;
}

.destination-card p {
  margin: 4px auto;
}'
  },
  {
    name: 'Old-timey text',
    html: '<h1>Lorem Ipsum</h1>
<div class="text">
  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti voluptate aut neque. Similique culpa ex hic minima quibusdam, sint quas quos repellat a distinctio veniam voluptatibus harum assumenda quaerat exercitationem vel cum. Asperiores sint quidem, laborum, veniam illo enim, modi excepturi sapiente aspernatur perspiciatis aut, inventore.</p>
  <p>Ab reiciendis, amet a voluptate at tempore, earum facere inventore dignissimos quas, eaque fuga exercitationem tenetur provident.</p>
  <p>Consequatur animi cupiditate, accusamus voluptatibus aperiam tempore, doloremque dolore neque deserunt veritatis molestias dolor illum minus totam quis! Unde, cumque dicta, nisi obcaecati amet inventore rerum architecto ullam facere asperiores labore ex et ea. Facere, rerum, vel.</p>
</div>',
    css: '/* TODO */

h1 {
  text-align: center;
}

.text {
  columns: 200px 2;
  max-width: 500px;
  margin: 0 auto;
}

p {
  text-align: justify;
  margin-top: 0;
}

p:first-child::first-letter {
  font-size: 300%;
  line-height: 100%;
  float: left;
}'
  }
])

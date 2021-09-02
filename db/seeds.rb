# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.create([
  {
    name: 'Button test',
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
  }
])

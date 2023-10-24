'use strict';

const activity = document.querySelector('.text');
const category = document.querySelector('.category');
const btn = document.querySelector('.btn');

const url = 'http://www.boredapi.com/api/activity/';

const request = (url) => {
   fetch(url)
      .then((res) => {
         return res.json();
      })
      .then((data) => {
         activity.innerHTML = data.activity;
         category.innerHTML = data.type;
      });
};
request(url);

btn.addEventListener('click', () => {
   return request(url);
});



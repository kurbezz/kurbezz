<script setup>
if (process.browser) {
  document.title = "Bulat Kurbanov - Backend Developer";
}
</script>

<template>
  <div class="app">
    <div class="header">
      <div class="photo-wrapper">
        <img class="photo" src="public/avatar.jpg" alt="avatar"/>
      </div>

      <div class="name-and-social">
        <div class="name">Bulat Kurbanov</div>

        <div class="profession">Backend Developer</div>

        <div class="email">
          <a href="mailto:me@kurbezz.me">
            <img src="~public/icons/mail.svg" alt="email"/>
            <div>me@kurbezz.me</div>
          </a>
        </div>

        <div class="social-links">
          <a href="https://t.me/kurbezz">
            <img src="~public/icons/telegram.svg" alt="telegram"/>
          </a>
          <a href="https://github.com/kurbezz">
            <img src="~public/icons/github.svg" alt="github"/>
          </a>
          <a href="https://www.linkedin.com/in/bulat-kurbanov-1089ab146/">
            <img src="~public/icons/linkedin.svg" alt="linkedin"/>
          </a>
        </div>
      </div>
    </div>

    <div>
      <h2>About me</h2>
      <div>
        I am a backend developer with 5 years of experience in web development.
        <br>
        I have experience in developing RESTful APIs, working with databases, and writing tests.
        <br>
        Dedicated to continuous self-improvement and the pursuit of knowledge, while also actively participating in open-source contributions.
      </div>
    </div>
    <br>
    <div>
      <h2>Experience</h2>

      <div>
        <span>Speechki · Full-time</span>
        <br>
        <strong class="text-large">Senior Python Backend Developer</strong>
        <br>
        <span class="text-small">Sep 2021 - Apr 2024 · 2 yrs 8 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed services using Django and FastAPI</li>
          <li>Worked with PostgreSQL, Redis, RabbitMQ, Docker, Amazon Web Services (AWS)</li>
          <li>Wrote library using Rust</li>
          <li>Wrote unit and integration tests using Pytest</li>
        </ul>
      </div>
      <br>
      <hr>

      <br>

      <div>
        <span>CS GROUP · Full-time</span>
        <br>

        <strong class="text-large">Head of Software Development</strong>
        <br>
        <span class="text-small">Jan 2021 - Jun 2021 · 6 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Performed planning, mentoring, and code reviews.</li>
          <li>Managed and streamlined software development, testing, and deployment processes.</li>
        </ul>

        <br>

        <strong class="text-large">Senior Full Stack Developer</strong>
        <br>
        <span class="text-small">Feb 2020 - Dec 2020 · 11 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed backend services using Django and Django REST framework</li>
          <li>Developed fronend using Vue</li>
          <li>Developed mobile application using Flutter, Dart</li>
          <li>Implemented automated CI/CD using GitLab CI/CD and Github Actions.</li>
          <li>Worked with PostgreSQL, Redis, RabbitMQ, Docker</li>
          <li>Wrote unit and integration tests using Pytest</li>
        </ul>
      </div>
      <br>
      <hr>
      <br>

      <div>
        <span>Zarnitza · Full-time</span>
        <br>
        <strong class="text-large">Full Stack Developer</strong>
        <br>
        <span class="text-small">Feb 2019 - Feb 2020 · 1 yr 1 mo</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed backend services using Django and Django REST framework</li>
          <li>Worked with PostgreSQL</li>
        </ul>
      </div>
      <br>
      <hr>
      <br>

      <div>
        <span>ДИА.ЛОГ · Part-time</span>
        <br>
        <strong class="text-large">Software Developer</strong>
        <br>
        <span class="text-small">Mar 2018 - Dec 2019 · 1 yr 10 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed backend service using Flask</li>
          <li>Developed androind application</li>
        </ul>
      </div>
      <br>
      <hr>
      <br>
    </div>

    <div>
      <h2>Education</h2>
      <div>
        <strong class="text-large">Bachelor of Engineering - BE, Computational and Applied Mathematics</strong>
        <br>
        <span>Kazan National Research Technical University named after A. N. Tupolev - KAI</span>
        <br>
        <span class="text-small">2016 - 2018</span>
        <br>
        <strong class="text-small">Grade: Incompleted</strong>
      </div>
    </div>
<br>
    <div>
      <h2>Skills</h2>

      <div class="skill">Python</div>
      <div class="skill">·</div>
      <div class="skill">Django</div>
      <div class="skill">·</div>
      <div class="skill">Django REST Framework (DRF)</div>
      <div class="skill">·</div>
      <div class="skill">FastAPI</div>
      <div class="skill">·</div>
      <div class="skill">Pytest</div>
      <div class="skill">·</div>
      <div class="skill">PostgreSQL</div>
      <div class="skill">·</div>
      <div class="skill">Redis</div>
      <div class="skill">·</div>
      <div class="skill">RabbitMQ</div>
      <div class="skill">·</div>
      <div class="skill">Docker</div>
      <div class="skill">·</div>
      <div class="skill">Amazon Web Services (AWS)</div>
      <div class="skill">·</div>
      <div class="skill">Rust</div>
    </div>
  </div>
</template>

<style scoped>
.app {
  display: flex;
  flex-direction: column;
  padding: 4em;
  max-width: 800px;
  margin: auto;
}

@media only screen and (max-width: 600px) {
  .app {
    padding: 2em;
  }
}

.header {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: flex-start;
}

.photo-wrapper {
  align-self: center;
}

@media only screen and (max-width: 600px) {
  .photo-wrapper  {
    margin: auto;
  }
}


.photo {
  width: 200px;
  height: 200px;
  border-radius: 50%;
}

.name-and-social {
  padding: 3em 3em 3em 5em;
  display: flex;
  flex-direction: column;
}

@media only screen and (max-width: 600px) {
  .name-and-social  {
    padding: 1em 0em 2em 0em;
  }
}

.name {
  font-size: 3em;
  font-weight: bold;
}

.profession {
  font-size: 2em;

  margin-bottom: 1em;
}

.email {
  width: 100%;
  display: flex;
}

.email > a {
  display: flex;
  text-decoration: none;
}

.email > a > div {
  font-size: 1.5em;
  color: black;
}

.email > a > img {
  height: 1.2em;
  padding-right: 0.3em;
  align-self: center;
}

.social-links {
  font-size: 1.5em;
  display: flex;
  flex-wrap: wrap;
}

.social-links > a {
  display: flex;
}

.social-links > a > img {
  padding-top: 0.5em;
  padding-right: 0.5em;
  height: 1em;
}

.text-small {
  font-size: 0.8em;
}

.text-large {
  font-size: 1.1em;
}

ul {
  margin-top: 0.3em;
  margin-bottom: 0.5em;
  padding-left: 1.5em
}

hr {
  border: 1px solid #dfdfdf;
  height: 0;
}

.skill {
  margin-right: 1em;
  display: inline-block;
}

h2 {
  margin-bottom: 0.4em;
}
</style>

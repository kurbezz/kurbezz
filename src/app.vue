<script setup>
import { ref } from "vue";

let darkMode = ref(false);

if (process.browser) {
  document.title = "Bulat Kurbanov - Backend Developer";

  const localStorageDarkMode = localStorage.getItem("darkMode");

  if (localStorageDarkMode !== null) {
    if (localStorageDarkMode === "true") {
      document.body.classList.add("dark-mode");
      darkMode.value = true;
    } else {
      document.body.classList.add("light-mode");
    }
  } else if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
    document.body.classList.add("dark-mode");
    darkMode.value = true;
  } else {
    document.body.classList.add("light-mode");
  }
}

function switchTheme() {
  darkMode.value = !darkMode.value;

  document.body.classList.toggle("light-mode");
  document.body.classList.toggle("dark-mode");

  localStorage.setItem("darkMode", darkMode.value);
}

function getExpFromJun2024(fromDate) {
  const jun2024 = new Date(fromDate);
  const now = new Date();

  const deltaMonths = now.getMonth() - jun2024.getMonth() + 1;
  const deltaYears = now.getFullYear() - jun2024.getFullYear();

  const years = deltaMonths < 0 ? deltaYears - 1 : deltaYears;
  const months = deltaMonths >= 0 ? deltaMonths : 12 + deltaMonths;

  let yrsPart = years > 0 ? `${years} yrs` : "";
  let mosPart = months > 0 ? ` ${months} mos` : "";

  return `${yrsPart}${mosPart}`;
}
</script>

<template>
  <div class="app">
    <div class="light-switcher" @click="switchTheme">
      <img v-show="darkMode" src="/public/icons/moon.svg" alt="light switcher darn on" style="width: 100%; border-radius: 10px;"/>
      <img v-show="!darkMode" src="/public/icons/sun.svg" alt="light swither dark off" style="width: 100%; border-radius: 10px;">
    </div>
    <div class="header">
      <div class="name-and-social">
        <div>
          <div class="name">Bulat Kurbanov</div>
          <div class="profession">Backend Developer</div>
        </div>
        <div>
          <div class="email">
            <a href="mailto:me@kurbezz.me">
              <img v-show="darkMode" src="public/icons/mail-dark.svg" alt="email"/>
              <img v-show="!darkMode" src="public/icons/mail.svg" alt="email"/>
              <div>me@kurbezz.me</div>
            </a>
          </div>

          <div class="social-links">
            <a href="https://t.me/kurbezz">
              <img v-show="darkMode" src="~public/icons/telegram-dark.svg" alt="telegram"/>
              <img v-show="!darkMode" src="~public/icons/telegram.svg" alt="telegram"/>
            </a>
            <a href="https://github.com/kurbezz">
              <img v-show="darkMode" src="~public/icons/github-dark.svg" alt="github"/>
              <img v-show="!darkMode" src="~public/icons/github.svg" alt="github"/>
            </a>
            <a href="https://www.linkedin.com/in/bulat-kurbanov-1089ab146/">
              <img v-show="darkMode" src="~public/icons/linkedin-dark.svg" alt="linkedin"/>
              <img v-show="!darkMode" src="~public/icons/linkedin.svg" alt="linkedin"/>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div>
      <h2>About me</h2>
      Backend Developer with 7 years of experience in web development, specializing in RESTful APIs, database management, and test-driven development. Committed to continuous self-improvement and active open-source contributor.
    </div>
    <br>
    <div>
      <h2>Experience</h2>

      <div>
        <span>Spines · Full-time</span>
        <br>
        <strong class="text-large">Full Stack Developer</strong>
        <br>
        <span class="text-small">Jun 2024 - Present · {{ getExpFromJun2024("2024-06-01") }}</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Design and optimize architectural solutions for a service using React and Node.js,
            improving performance and maintainability.</li>
          <li>Develop new microservices with FastAPI, ensuring scalability and efficiency.</li>
          <li>Maintain and enhance existing services built with Django and FastAPI,
            optimizing code quality and performance.</li>
          <li>Successfully orchestrated the migration of all services and data from AWS to Azure,
            achieving minimal downtime and ensuring system stability.</li>
          <li>Improve CI/CD pipelines and infrastructure to enhance deployment speed and reliability.</li>
        </ul>
      </div>
      <br>
      <hr>

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
          <li>Developed services using Django and FastAPI.</li>
          <li>Worked with PostgreSQL (PL/pgSQL), Redis, RabbitMQ, Docker, and Amazon Web Services (AWS).</li>
          <li>Authored a library using Rust.</li>
          <li>Wrote unit and integration tests using Pytest.</li>
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
          <li>Led planning, mentoring, and code reviews.</li>
          <li>Managed and streamlined software development, testing, and deployment processes.</li>
          <li>Implemented Agile methodologies to improve team productivity.</li>
        </ul>

        <br>

        <strong class="text-large">Senior Full Stack Developer</strong>
        <br>
        <span class="text-small">Feb 2020 - Dec 2020 · 11 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed backend services using Django and Django REST Framework.</li>
          <li>Created frontend components with Vue.js.</li>
          <li>Built a mobile application using Flutter and Dart.</li>
          <li>Implemented automated CI/CD pipelines using GitLab CI/CD and GitHub Actions.</li>
          <li>Utilized PostgreSQL, Redis, RabbitMQ, and Docker.</li>
          <li>Wrote unit and integration tests using Pytest.</li>
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
          <li>Developed backend services using Django and Django REST Framework.</li>
          <li>Worked with PostgreSQL.</li>
        </ul>
      </div>
      <br>
      <hr>
      <br>

      <div>
        <span>DIA.LOG · Part-time</span>
        <br>
        <strong class="text-large">Software Developer</strong>
        <br>
        <span class="text-small">Mar 2018 - Dec 2019 · 1 yr 10 mos</span>
        <br>
        <br>
        <span class="text-large">Responsibilities:</span>
        <ul>
          <li>Developed backend services using Flask.</li>
          <li>Created an Android application.</li>
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
      <h2>Technologies and Tools</h2>
      <div class="technology-list">
        <strong>Programming Languages:</strong>
        Python (Expert), Rust (Advanced)
      </div>
      <div class="technology-list">
        <strong>Frameworks:</strong>
        Django (Expert), Django REST Framework (DRF) (Expert), FastAPI (Advanced)
      </div>
      <div class="technology-list">
        <strong>Testing:</strong>
        Pytest (Advanced)
      </div>
      <div class="technology-list">
        <strong>Databases:</strong>
        PostgreSQL (Advanced), Redis (Intermediate)
      </div>
      <div class="technology-list">
        <strong>Messaging and Queues:</strong>
        RabbitMQ (Intermediate)
      </div>
      <div class="technology-list">
        <strong>Containerization and Orchestration:</strong>
        Docker (Advanced), Docker Swarm (Intermediate)
      </div>
      <div class="technology-list">
        <strong>Cloud Technologies:</strong>
        Amazon Web Services (AWS) (Intermediate)
      </div>
      <div class="technology-list">
        <strong>DevOps Tools:</strong>
        GitLab CI/CD, GitHub Actions
      </div>
    </div>

    <br>

    <div>
      <h2>Projects</h2>

      <div class="project">
        <strong class="project-name">Image Drawer</strong><span> · Speechki</span>
        <br>
        <span><strong>Description:</strong> Wrote a library for drawing text on images using Rust.</span>
        <br>
        <span><strong>Technologies:</strong> Rust, Python, HarfBuzz</span>
        <br>
        <span><strong>Result:</strong> Accelerated image creation with text by 40 times. Excellent support for languages such as Indic, Arabic, Thai and Lao, Khmer, Myanmar, Tibetan, Hangul, Hebrew, and many others.</span>
      </div>

      <br>

      <div class="project">
        <strong class="project-name">Insulin Pump Management Application and Backend</strong><span> · DIA.LOG</span>
        <br>
        <span><strong>Description:</strong>Developed an application and backend for managing an insulin pump based on the <a href="https://openaps.org/">OpenAPS</a> project.</span>
        <br>
        <span><strong>Technologies:</strong> Flask, Java, Kotlin</span>
        <br>
        <span><strong>Result:</strong> Improved the quality of life for people with diabetes.</span>
      </div>

      <br>

      <div class="project">
        <strong class="project-name">Internal Logistic Management System</strong><span> · CS GROUP</span>
        <br>
        <span><strong>Description:</strong> Developed a system for automating internal logistics within the company. The system allows tracking order status, managing warehouse inventory, and handling accounting.</span>
        <br>
        <span><strong>Technologies:</strong> Django, DRF, Vue, PostgreSQL</span>
        <br>
        <span><strong>Result:</strong> Reduced order processing time, improved reporting, and enhanced inventory control.</span>
      </div>

      <br>

      <div class="project">
        <strong class="project-name">Mobile Application for Drivers</strong><span> · CS GROUP</span>
        <br>
        <span><strong>Description:</strong> Developed a mobile application for drivers to manage routes and order statuses.</span>
        <br>
        <span><strong>Technologies:</strong> Flutter, Dart</span>
        <br>
        <span><strong>Result:</strong> Automated the process of managing order statuses and routes within the company.</span>
      </div>

      <br>

      <div class="project">
        <strong class="project-name">Internal Order Managment System</strong><span> · Zarnitza</span>
        <br>
        <span><strong>Description:</strong> Developed a system for managing orders and sales.</span>
        <br>
        <span><strong>Technologies:</strong> Django, PostgreSQL</span>
        <br>
        <span><strong>Result:</strong> Reduced the number of late order shipments by 30%.</span>
      </div>
    </div>
  </div>
</template>

<style global>
.dark-mode {
  background-color: black;
  color: white;
}
</style>

<style scoped>
body {
  background-color: var(--color-primary);
  color: var(--color-secondary);
}

.app {
  display: flex;
  flex-direction: column;
  padding: 4em;
  max-width: 800px;
  margin: auto;
}

@media only screen and (max-width: 825px) {
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

.name-and-social {
  padding: 2em 0em 3em 0em;
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  width: 100%;
}

@media only screen and (max-width: 825px) {
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
}

.email {
  width: 100%;
  display: flex;
  padding-top: 0.5rem;
}

.email > a {
  display: flex;
  text-decoration: none;
}

.email > a > div {
  font-size: 1.5em;

  color: black;

  .dark-mode & {
    color: white;
  }
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

  .dark-mode & {
    border-color: #333;
  }
}

h2 {
  margin-bottom: 0.4em;
}

.light-switcher {
  position: fixed;
  top: 1em;
  right: 1em;
  padding: 0.3em;
  z-index: 1000;
  width: 20px;
  cursor: pointer;

  .moon {
    display: none;
  }

  .dark-mode & .moon {
    display: block;
  }

  .dark-mode & .sun {
    display: none;
  }
}

a {
  color: black;

  .dark-mode & {
    color: white;
  }
}

.technology-list {
  line-height: 1.2;
}

.project {
  .project-name {
    font-size: 1.1em;
  }

  strong {
    line-height: 1.2;
  }

  span {
    line-height: 1.2;
  }
}
</style>

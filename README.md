# Relic-Nodejs


var newrelic  = require("newrelic");
app.locals.newrelic = newrelic;


index.ejs
<head>
  <%- newrelic.getBrowserTimingHeader() %>


Package.json
  "scripts": {
    "start": "node ./bin/www",
    "dev": "node ./node_modules/nodemon/bin/nodemon.js"
  },



copy newrelic.js to root and change: 

  app_name: ['zamora'],
  /**
   * Your New Relic license key.
   */

  license_key: '5e3044e2453885933ad90399c0ce538b1e3ddc69',



Dockerfile
From node
EXPOSE 3000
COPY zamora  /app
RUN ls  -l  /app
WORKDIR /app
RUN npm install
CMD ["npm", "start", "dev"]

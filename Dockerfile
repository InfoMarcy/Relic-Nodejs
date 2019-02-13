From node
EXPOSE 3000
COPY zamora  /app
RUN ls  -l  /app
WORKDIR /app
RUN npm install
CMD ["npm", "start", "dev"]


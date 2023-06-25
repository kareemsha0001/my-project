FROM node:16.15.1
WORKDIR c:\Users\SHA0001\Documents\GitHub\dockerapplication
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm install react-scripts@5.0.1 -g --silent
# CMD ["npm", "start"]

RUN npm install \
    && npm install -g serve \
    && npm run build \
    && rm -fr node_modules

EXPOSE 3000



# Start the app using serve command
CMD [ "serve", "-s", "build" ]
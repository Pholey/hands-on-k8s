
FROM node:8

# Set the working directory inside the container
WORKDIR /app

# Copy over the package json
COPY package.json /app

# Run npm install _before_ copying over the rest of the app.
# This keeps containers from rebuilding dependencies on every code change
RUN npm install

# Finally copy over our application code
COPY . /app

# Run our 🔥 server
CMD node index.js

# Expose the port the node server is running on
EXPOSE 5010
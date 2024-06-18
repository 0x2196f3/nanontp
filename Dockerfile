# Use an official Golang image as a base
FROM golang:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Go modules file
COPY go.mod .

# Download the dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the Go program
RUN go build -o nanontp main.go

# Expose the port
EXPOSE 123

# Run the command to start the NTP server
CMD ["./nanontp"]
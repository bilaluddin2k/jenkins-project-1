FROM centos:latest

# Create a user named sysadmin
RUN useradd -ms /bin/bash sysadmin

# Set the working directory
WORKDIR /home/sysadmin

# Copy the shell script into the container
COPY generate_hash.sh .

# Set the owner of the script to sysadmin
RUN chown sysadmin:sysadmin generate_hash.sh

# Change permissions to allow execution
RUN chmod +x generate_hash.sh

# Set the entrypoint to the shell script
ENTRYPOINT ["./generate_hash.sh"]
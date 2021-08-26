FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR  /app

## Step 2:
# Copy source code to working directory
COPY $PWD /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
ENV VIRTUAL_ENV=~/.app
RUN python3.7 -m venv $VIRTUAL_ENV 
RUN ${VIRTUAL_ENV}/bin/activate
RUN make install

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python3.7", "app.py" ]

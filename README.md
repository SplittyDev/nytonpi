# NYT on Pi
> New York Times on Raspberry Pi.

Inspired by this post on Hacker News: [An updated daily front page of The New York Times as artwork on your wall ](https://news.ycombinator.com/item?id=25063726)

## Running the script
Required: `wget`, `imagemagick`, `fbi`

```bash
sudo chmod a+x nytonpi.sh
sudo ./nytonpi.sh
```

## Configuration
You can export the following environment variables for configuration:

| Environment Variable | Default Value | Description                     |
| -------------------- | ------------- | ------------------------------- |
| `NYTONPI_FB`         | `/dev/fb0`    | Framebuffer device              |
| `NYTONPI_TTY`        | `1`           | Output TTY                      |

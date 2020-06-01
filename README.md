# Simple Docker Example
An example of using a docker file to create reproducible experiments


# Build a container for jupyter notebook
```
docker build -t shapefile_example .
```

# Verify container in list
```
docker images
```
you should see a repository in the list named _shapefile_example_

# View the example data

### make sure you don't have other local notebooks running on this port, 8888.

```
docker run -it -p 8888:8888 shapefile_example
```

# Open the link in the output

Look at the output for a line similar to this:

```
To access the notebook, open this file in a browser:
http://127.0.0.1:8888/?token=ded9cf91dff37ee7df1b5b5a442b0908956fab0131f6b920
```

The token will be unique and generated every time the container is launched.


# Open the notebook

Once the web page is loaded, click on the _hydrograph_example.ipynb_ file to load the notebook

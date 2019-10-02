### Exercises 3

## 1. Version control and image manipulation

## Part A

# a. loads and displays image 'el-capitan.png'
using Images
el_capitan = imread("el-capitan.png")
show = imshow(el_capitan)

# checks the size of image 'el-capitan'
size(el_capitan)

# b. a function that takes as input a string representing the filename, and then loads the image file, displays it, and extracts the red, blue, and green channels into separate variables, and returns those variables

```
extract_rgb(img) -- reads and extracts components from an immage file
This function reads, loads, and displays image file and extracts the red, blue, and green channes into separate variables and returns those variables

Args:
    arg1 (str): input is a string that represents an image filename (i.e. "some-image.png")

Returns:
    out (Array): outputs three concatenated arrays representing the red, gree, and blue channels, respectively
```

function extract_rgb(img)
    el_cap = imread(img)
    imshow(el_cap)
    r = el_cap[:, :, 1]
    g = el_cap[:, :, 2]
    b = el_cap[:, :, 3]
    return vcat(r, g, b)
end

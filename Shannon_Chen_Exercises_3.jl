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
    println("reset with git reset --mixed")
end

#c. buggy file was created

# d. performed a git reset --mixed and added a println
# Using git reset --mixed does not change the actual "buggy" file, but instead saves the changes into the working directory and shows it on a branch detached from HEAD.

# e. Makes a new 360x640x3 matrix and sets the R, G, and B channels to it. This new image would be plotted next to the original image for comparison

image2 = copy(el_capitan) # new 360x640x3 matrix representing the new image
image2[:, :, 1] = el_capitan[:, :, 2] # sets image2[:, :, 1] as the G channel from the original image
image2[:, :, 2] = el_capitan[:, :, 3] # sets image2[:, :, 2] as the B channel from the original image
image2[:, :, 3] = el_capitan[:, :, 1] # sets image2[:, :, 3] as the R channel from the original image

# creation of Figure_1
# plots the original image on the left hand side
subplot(1, 2, 1)
imshow(el_capitan)
title("Original Image")

# plots new image on the right hand side
subplot(1, 2, 2)
imshow(image2)
title("New Image")

axis("off")

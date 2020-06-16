# silverwright

A project to investigate hand written multiple digit recognition.

## Motivation

The MNIST handwritten project is well known and studied. However, for the scope of this project, we wish to recognize multiple handwritten digits together, in a structured document whose format is flexible. This covers manual data entry into a table, which is then digitized into a CSV or Excel file.

As a first pass, this project takes a target spreadsheet and splits the cells of it. Then, the entry application allows for the rapid labelling of each image. Finally, the labelled set is available for further processing.

This experiment tried to use Tessaract out of the box to recognize the digits. Results, as compiled in the final Excel spreadsheet, have been unsatisfactory. Prefilled in data, like hours, or other headers, have been recognized fairly well.

Handwritten digit recognition is still an active area of research. It is a parent to the identification of street numbers, whose style likewise displays a great deal of variety.

The next step is likely to involve a fully connected neural network, since it is recognized as the best way to accept images of varying sizes. The first step in this process is to train a network to recognize how many characters are in each image. This would essentially be a R-CNN network with region proposal and then classification.

This particular dataset could also potentially benefit from convolution, in that columns are range bound. Likewise, the rows could apply one-shot learning, since each row has a single author.

## Setup

### Conda

The recognition of document structure comes from OpenCV. Further visual processing is performed in Jupyter Notebook.

### Rails

Once the cells have been split, the resulting directory can be analysed and labelled via the entry rails app.

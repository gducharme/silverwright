# silverwright

A project to investigate hand written multiple digit recognition.

The MNIST handwritten project is well known and studied. However, for the scope of this project, we wish to recognize multiple handwritten digits together.

As a first pass, this project takes a target spreadsheet and splits the cells of it. Then, the entry application allows for the rapid labelling of each image. Finally, the labelled set is available for further processing.

This experiment tried to use Tessaract out of the box to recognize the digits. Results, as compiled in the final Excel spreadsheet, have been unsatisfactory.

The next step is likely to involve a fully connected neural network, since it is recognized as the best way to accept images of varying sizes. The first step in this process is to train a network to recognize how many characters are in each image. This would essentially be a R-CNN network with region proposal and then classification.

This particular dataset could also potentially benefit from convolution, in that columns are range bound. Likewise, the rows could apply one-shot learning, since each row has a single author.

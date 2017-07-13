"COMPUTER AIDED DIAGNOSIS OF BRAIN TUMOUR USING MATLAB" (Intern at Sketchbytes, Port Blair, A&N Islands,INDIA)



***

The given project consists of diagnosing and detection of Brain tumour using MATLAB. 
The user gets to browse the input MRI image which is then pre-processed by image enhancement techniques and noise removal
filters. The output image in this step is then processed by Thresholding and applying Watershed segmentation.
The segmented image then undergoes morphological operations like imerode and imdilate. Finally, the output shows the 
segmented tumour in the input image.

***

IMAGE ENHANCEMENT TECHNIQUES-->(Any will do, here, i have used imsharpen() for image sharpening and imadjust() for contrast enhancement in my project)
1. imsharpen()
2. imadjust()
3. histeq() % HISTOGRAM EQUALISATION
4. ANY OTHER

NOISE REMOVAL FILTERS--->(I have used MEDIAN FILTER, Due to its advantages)
1.MEDAIN FILTER
2.MEAN FILTER
3.ANY OTHER

THRESHOLDING--> using graythresh() and im2bw()

WATERSHED SEGMENTATION

MORPHOLOGICAL OPERATIONS-->
imerode() and imdilate() with structuring element as disk-shaped of radius 4.

***

The above said MATLAB functions depend on the user and the type of images taken as input. One could opt for any of the above(or some other) as need dictates.
The algoirthm used in this project is simple and sufficient way of detecting the Tumour from MRI Image.

***

CONTACT INFORMATION:
ABHISHEK SINGH
Department of Computer Science and Engineering
National Institute of Technology Durgapur, India
abhishek.nitdgp.98@gmail.com
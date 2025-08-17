---
title: Attention Guided Knowledge Distillation
date: 2020-08-23
---

# Proposed Method
Proposed model (explain our new improvement, the hypothesis, and the reasoning behind it) 
Reason for choosing feature maps from first and last, how we combine it, etc... 

## General Overview
- We will be predominantly dealing with two models - a larger, pretrained teacher model and a smaller, student model that will be trained.
- The component of the proposed architecture is the "ATCam" - Attention Capture Module - which is used both by the teacher and the student to generate attention maps from their respective feature maps
- We calculate the *segmenation loss* using the attention maps of both the student and the teacher.
- We calculate Categorical Cross Entropy (CCE) of the student model by comparing the prediction to the ground truth.
- We combine these two losses to form the final loss function of the model which is then minimized

## New improvement
- Construction of attenion maps from feature maps and developing a new loss function by which the student is trained.
- Combining only the feature maps of the first few and last few layers.
- Combining in one of three ways:
  - FMA (Mean and Mean)
    - Mean of the intralayer feature maps and mean of the interlayer resultant feature maps.
  - MIPS (Sum and Mean)
    - Mean of the intralayer feature maps and max of the interlayer accumulated feature maps.
  - Saliency Maps
- We propose to use attention as a means to distill knowledge from the teacher model to the student model
- We propse 3 novel ways to combine the feature maps to generate the attention maps. They are
  - Feature Map Accumulation
    - In FMA, the mean of the feature maps of a layer is calculated. This process repeated for all the layers that are considered. Then mean of the resultant feature maps is calculated.
  - Maximum Intensity Projection
    - In FMA, the sum of the feature maps of a layer is calculated. This process repeated for all the layers that are considered. Then mean of the resultant feature maps is calculated.
  - Saliency Maps
    - // TODO Ashwath 
## Hypothesis
### Why KD and attenion maps?
  - Attenion of the teacher is a valuable piece of information just as the SoftMax
    - As mentioned before, the concept of "Knowledge" can extended by including the "Attention" of the teacher as a part of its knowledge.
    - As mentioned before the concept of KD can extended by teaching the student where to look. As a popular example let us take the "Cat and Dog" example. A student model can learn far better if it know that the most discriminating features to look for are the ears and the nose.
      - For example take the MNIST dataset. Suppose we have a datapoint that belongs to the label "8". When a student model is trained in isolation the only information it has about this is the label. But when it is trained using vanilla KD, the SoftMax output of the teacher conveys some extra information. Suppose the SoftMax output of the teacher has probabilities  of 0.6 for the label "8" and 0.3 for the label "3", the student can infer that labels 8 and 3 are similar in some sense. The SoftMax outputs of the teacher also convey how sure the teacher is about the label of the datapoint. This is the fundamental idea behind KD.
      - This idea is extended using the notion of "Attention". Consider a datapoint of the label "7". The attention map of the teacher reveals that 7 is distinguised from the other label such as 3 or 8 by its strong straight lines. The attention maps of the teacher reveal the discriminating features of each label. By training the student model to mimic the teacher's attention map we are providing the discriminating feature of each input to the model.
### Why attention maps as a means for KD?
  - Interpretability
    - Even though CNNs have achieved tremendous accuracy in various datasets their inner workings is still a black-box.
    - By using attention maps we can explain why a CNN model predicted a certain output
    - This provides interpretability of the model which is paramount for sensitive usecases such as medical diagnosis.
  - Cost effective
    - When combined, attention transfer adds very little computational cost, as attention maps for teacher can be easily computed during forward propagation, needed for distillation.
    - The attention maps of the teacher can be reused to train models of various sizes.

### Why our way of generating attention maps (Why first and last layers)
- We know that CNNs extract features in a hierarchical fasion i.e the first few layers extract the low-level, rudimentary features such as edges, textures and shapes, and the last few layers focus in on the discriminatory features of the input image. This means that we can get the most "knowledge" by just using the feature maps of the first few and last few layers.
- Usually the teacher model is very deep. Inorder to produce these feature maps the output of each layer has to go through numerous steps. By excluding this process for the middle layers, which don't really contribute much to the final attention map, we reduce the complexity of the process significantly.
#### Why FMA and MIP?
- In the methods that were described such as FMA and MIP, the goals is to capture both the /local and the global/ context of the model.
- By performing operations along both the axes - intralayer and interlayer - we hypothesize that the goal will be achieved.

# CNN

## Why aren't traditional fully connectected networks not feasible for computer vision?
- Even for a small color image of size 1000x1000, the number of parameters will be 1000x1000x3(color channels) which will be 3M
- Suppose the first hidden layer has 1000 neurons then the number of parameters in that first part of the network alone will be 3B
- Which that many number of parameters it is very hard to avoid /overfitting/
 
##  Convolution
- Takes an input image and a /filter/
- First the filter is place upon the top-left corner of the input image
- The sum of the element-wise multiplication of elements give the first element of the output
- Then the filter is slided to right by one element
- An example would be
  | 1 | 0 | -1 |
  | 1 | 0 | -1 |
  | 1 | 0 | -1 |
- This is an /vertical edge detector/
- But this is a handpicked matrix by computer vision experts
- The better way is the treat this filter as a /set of learnable parameters/
- This is analogous to the /weights/ of each neuron in MLP
- But making this a learnable parameter we can construct the perfect filter for our usecase

# Presentation Notes
## Abstract
- Good Morning everyone. I am Deebakkarthi and I am gonna present on our paper "Building of Computationally effective Deep Learning Models using Attention based knowledge Distillation"
- To give a brief outline our work,
  - Our paper aims to kill two birds in one stone - reduce size of CNNs and improve their interpretability
  - We propose three methods to achieve this - FMA, MIP and SALS
  - We found that all three methods achieved significant results with SALS showing the best result
## Motivation
- You may ask why do we even need this? As stated earlier the answer is twofold
- The two fastest growing tech - CNNs and IoT don't exactly go hand in hand
- Lets us take an example from the medical diagnosis
- Good CNNs are too large to fit on resource constrained devices like portable diagnosis devices
- Inspite of the groundbreaking performance of CNNs, we still have no clue on "why" it gave the prediction that it did
- This is not really that big of deal when used for non critical applications. But this renders them very unreliable to doctors
- So by solving these we reckon that there will be much more portable medical diagnosis machines that doctors can trust
## Related Works
- We stand on the shoulders of giants
- These works provide the foundation of which we have built off of
- The two objective that we are trying to solve we highlighted by Teng et. al and Strigl et. al
  - The advantages of a smaller model and it's swift inference time was highlighted by Strigl et. al
  - Teng et. al showcased why interpretability so paramount for medical diagnosis
- A novel way to improve performance of a small model by performing computationally cheap operations was proposed by Han et. al
- The orginial Knowledge distillation paper by geoffrey hinton serves as our base
- So what is KD?
- It is a form for model compression
- It involves two models
- The core principle of KD is that valuable insights can be garnered from the softmax output of the teacher
- To describe it metaphorically, it is like a teacher distilling their knowledge or teaching  to the student
- Mathematically speaking, this can be described as a Loss function that takes both the softmax and the ground truth difference into consideration
- I leave it up for Ashwath to carry on from here

# Final Draft
## Abstract
- Good afternoon everyone. I am Deebakkarthi and we are going to present our paper "Building of Computationally effective Deep Learning Models using Attention based knowledge Distillation"
- To give a brief outline our work,
  - Our paper aims to kill two birds in one stone - reduce size of CNNs and improve their interpretability
  - We propose three methods to achieve this - FMA, MIP and SALS
  - We found that all three methods achieved significant results with SALS being the best of the bunch
## Motivation
- Why do we even want to do this?
- The reason is twofold
  - CNNs are too large to implement on resource constraint devices
  - CNNs are still a black box which renders them unreliable for critical applications
- Our objectives were to tackle these to issues

## Related Works
- We stand on the shoulders of giants
- The following papers provide the base for our research
- Papers by Teng et. al and Strigl et. al highlight our objectives
- The original KD paper by Hinton et. al is the base for all KD research
- What is KD
- It is a model compression technique involving two models - a teacher and a student
- The main idea of KD is instead of treating the learning parameters such as the weights or filter we expand the idea of knowledge to the softmax output of the teacher
- Metaphorically this can state as the teacher teaching or distilling their knowledge to the student
- Mathematically this is a loss function which combines two losses - CCE with ground truth and a loss function with the softmax output
- I leave it to Ashwath to expatiate the proposed methodology

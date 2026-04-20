---
title: Geometry of Data HW4
date:  2026-04-12T19:03:20-04:00
tags:
mathjax: true
draft: true
---
# References
- [20260418T190541-score](20260418T190541-score.md)
- [20260418T183525-fisher_information](20260418T183525-fisher_information.md)
- [20260418T201957-fisher_information_and_information_geometry](20260418T201957-fisher_information_and_information_geometry.md)
- [20260418T203031-christofell_symbols](20260418T203031-christofell_symbols.md)
---
# 1. Consider the set of all 2 ×2 matrices with determinant equal to one:

$$\text{SL}(2, \mathbb{R}) = \left\{\begin{pmatrix}a & b \\ c & d\end{pmatrix}: ad - bc = 1\right\}$$

## (a) Show that $\text{SL}(2, \mathbb{R})$ is a Lie group. You don’t need to give a rigorous proof, just give a simple argument for each rule that it needs to satisfy (1-2 sentences per rule, maybe with a simple equation, is sufficient).

Let us see what makes something a *Lie Group*:
1. It is a **group**
2. The two group of operations are smooth mappings over the manifold.

What makes something a group?

A group $G$ is a tuple of a set and a binary operation $(G, *)$ such that they obey the following properties
1. $\forall x, y \in G, z = x * y \implies z \in G$ (Closure)
2. $\forall a, b, c \in G, a * (b * c) = (a * b) * c$ (Associative)
3. $\forall x \in G, \exists e, x * e = e * x = x$ (Identity)
4. $\forall x \in G, \exists x^{-1}, x * x^{-1} = x^{-1} * x = e$ (Inversion)

The set here is the $\text{SL}(2, \mathbb{R})$ and the binary operation is ordinary matrix multiplication.

To make our lives easier, let us just represent the matrices as vectors of $\mathbb{R}^4$

### Closure
Let $X, Y \in G$ and be defined as 

$X = \begin{pmatrix}a & b \\ c & d\end{pmatrix}, Y = \begin{pmatrix}p & q \\ r & s\end{pmatrix}$

Since they are in $G$, we know that $ad - bc = 1, ps - qr = 1$

$Z = X * Y = \begin{pmatrix}ap+br & aq+bs \\ cp+dr & cq + sd\end{pmatrix}$

$\text{det}(Z) = (ap+br)(cq+sd) - (aq+bs)(cp+dr) = (ad-bc)(ps - qr) = 1$

Hence, the closure property is satisfied.

### Associativity
$X = \begin{pmatrix}a & b \\ c & d\end{pmatrix}$

$Z = \begin{pmatrix}e & f \\ g & h\end{pmatrix}$

$Z = \begin{pmatrix}i & j \\ k & l\end{pmatrix}$


Let $X, Y, Z\in G$

### LHS

$X(YZ) = \begin{pmatrix}a & b \\ c & d\end{pmatrix}\left(\begin{pmatrix}e & f \\ g & h\end{pmatrix} \begin{pmatrix}i & j \\ k & l\end{pmatrix}\right)$

$=\begin{pmatrix}a & b \\ c & d\end{pmatrix}\begin{pmatrix}ei+fj & ej+fl\\ gi+hk & gj+hl\end{pmatrix}$

$=\begin{pmatrix}aei+afk+bgi+bhk&aej+fla+bgi+bhl\\ cei+fkc+dgi+hkd&cej+cfl+dgi+dhl\end{pmatrix}$

### RHS



$(XY)Z = \left(\begin{pmatrix}a & b \\ c & d\end{pmatrix}\begin{pmatrix}e & f \\ g & h\end{pmatrix}\right) \begin{pmatrix}i & j \\ k & l\end{pmatrix}$

$=\begin{pmatrix}ae+bg & af+bh \\ ce+dg & cf+dh\end{pmatrix}\begin{pmatrix}i & j \\ k & l\end{pmatrix}$

$=\begin{pmatrix}aei+afk+bgi+bhk&aej+fla+bgi+bhl\\ cei+fkc+dgi+hkd&cej+cfl+dgi+dhl\end{pmatrix}$

LHS = RHS

Matrix multiplication is associative. This triple product is closed. we aren't leaving the group.

### Identity

Our usual $I_2$ also has a determinant of 1. We know that

$XI = IX = X, \forall X \in GL(2, \mathbb{R})$

Since $SL(2, \mathbb{R}) \subset GL(2, \mathbb{R})$, we can say that

$XI = IX = X, \forall X \in G$

Hence, we have our identity.

### Inverse

Let  $X = \begin{pmatrix}a & b \\ c & d\end{pmatrix}$
We need to find a matrix $X^{-1} \in G$ that has the following property

$XX^{-1} = X^{-1}X = I$ where $I$ is the identity

Let us assume that $X^{-1} = \begin{pmatrix}i & j \\ k &l\end{pmatrix}$. $i, j, k, l\in \mathbb{R}$. Let us not check if it is in $G$ for now.

$XX^{-1} = \begin{pmatrix}ai+bk & aj+bl\\ ci+dk & cj+dl\end{pmatrix} = \begin{pmatrix}1 & 0 \\0 & 1\end{pmatrix}$

We get the following system of equations

$ai+bk = 1$

$aj+bl = 0$

$ci+dk = 0$

$cj+dl = 1$

As we know $a, b, c, d$, we can rewrite $k = -\frac{c}{d}i$ and $l = -\frac{a}{b}j$

Substituting these in $ai+bk= 1$  we get $i = d$ and $k = -c$

Similarly using them in $cj+dl = 1$ yields us $j = -b$ and $l = a$

For the other way around we get

$X^{-1}X = \begin{pmatrix}ia + jc & bi + jd \\ ka + lc & kb + ld \end{pmatrix} = \begin{pmatrix}1 & 0 \\0 & 1\end{pmatrix}$

$ai + cj = 1$

$bi +jd = 0$

$ak + cl = 0$

$bk + dl = 1$

$i = -\frac{d}{b}j$

$k = -\frac{c}{a}l$

Substituting them back yields us the same values of $i, j, k, l$

For any $X \in G$ we have an $X^{-1} = \begin{pmatrix}d & -b \\ -c & a\end{pmatrix}$

let us check if this $X^{-1} \in G?$ 

$\text{det}(X^{-1}) = ad - (-b\times -c)= (ad - bc) = 1$

Hence, $X^{-1}\in G$

So we have our inverse

This makes $\{G, *\}$ a group.


What makes something *Lie*?

Let us create two functions $*: G\times G \rightarrow G$ and $^{-1}: G \rightarrow G$

We have represented $G$ as $\mathbb{R}^4$ (technically a subset of $\mathbb{R}^4$ that satisfies $\text{det} (\cdot)= 1$)

So $*$ is just a vector function. Furthermore, we can break down this vector function for a tuple of multivariate real valued functions.

$* = (*_1, *_2, *_3, *_4)$ and $*_n : G \times G\rightarrow \mathbb{R}$.

$*$ is smooth if all the $*_n$ are smooth

$*_1(a, b, c, d, i, j, k, l) = ai+bk$

$*_2(a, b, c, d, i, j, k, l) = aj+bl$

$*_3(a, b, c, d, i, j, k, l) = ci+dk$

$*_4(a, b, c, d, i, j, k, l) = cj+dl$

$\nabla *_1 = (i, k, 0, 0, a, 0, b, 0)$

$\nabla *_2 = (j, l, 0, 0, 0, a, 0, b)$

$\nabla *_3 = (0, 0, i, k, c, 0, d, 0)$

$\nabla *_4 = (0, 0, j, l, 0, c, 0, d)$

And the higher gradients are just the $0$ vector

$*_n$ is a smooth multivariate real function. $*$ is smooth as all of it components are smooth.



(I'm gonna call the inverse function just $i$ from now on)

Similarly for $i = (i_1, i_2, i_3, i_4)$ and those are defined as

$i_1(a, b, c, d) = d$

$i_2(a, b, c, d) = -b$

$i_3(a, b, c, d) = -c$

$i_4(a, b, c, d) = a$

$\nabla i_1 = (0, 0, 0, 1)$

$\nabla i_2 = (0, -1, 0, 0)$

$\nabla i_3 = (0, 0, -1, 0)$

$\nabla i_4 = (1, 0, 0, 0)$

And it is clear that the higher order gradients are the $0$ vector and this is smooth.

So both of our group operations are smooth.

$\{G, *\}$ is a lie group.

---

## (b) Consider the upper half plane: 
## $\mathbb{H} = \{(x, y): (x, y)\in \mathbb{R}^2, y > 0\}$
## Show that the following is a group action of $SL(2,\mathbb{R})$ on $\mathbb{H}$:
## $\left(\begin{pmatrix}a & b \\ c & d\end{pmatrix}, (x, y)\right) \mapsto \frac{1}{(cx+d)^2 + c^2y^2}(ac(x^2 + y^2)+bd+(ad+ bc)x,(ad−bc)y)$

What is a (left) group action?

Assume that we have some group $G$ and another set $X$. 

We define a function $\alpha: G \times X \rightarrow X$ such that

1. $\forall x \in X: \alpha (e, x) = x$ where $e$ is the identity element of $G$
2. $\forall g, h \in G:\forall x \in X:\alpha(g, \alpha(h, x)) = \alpha(gh, x)$

### Identity

Let us first verify the identity

We saw that $e = \begin{pmatrix}1 & 0 \\ 0 & 1\end{pmatrix}$. In terms of $(a, b, c, d) = (1, 0, 0, 1)$

$\left(\begin{pmatrix}a & b \\ c & d\end{pmatrix}, (x, y)\right) \mapsto \frac{1}{(cx+d)^2 + c^2y^2}(ac(x^2 + y^2)+bd+(ad+ bc)x,(ad−bc)y)$

$=\frac{1}{(0x+1)^2 + 0^2y^2}(0(x^2 + y^2)+0+(1+ 0)x,(1−0)y)$

$=\frac{1}{(0x+1)^2 + 0^2y^2}(0(x^2 + y^2)+0+(1+ 0)x,(1−0)y)$

Which simplifies to $x, y$ which was our input

### Compatibility 
I borrowed the idea of representing the half plane as $\mathbb{C}$ from

https://www.cis.upenn.edu/~cis6100/cis61008sl5.pdf

Our $\alpha$ is 

$\left(\begin{pmatrix}a & b \\ c & d\end{pmatrix}, (x, y)\right) \mapsto \frac{1}{(cx+d)^2 + c^2y^2}(ac(x^2 + y^2)+bd+(ad+ bc)x,(ad−bc)y)$

Let us first rewrite the $x, y$ as $z = x + yi$. Let us also define $\bar{z} = x - yi$. Notice that $\bar{z} \notin \mathbb{H}$ . This definition is just for the sake of convenience.

We can rewrite $\alpha$ as 

$=\frac{ac(x^2 + y^2) + bd + (ad + bc)x + (ad - bc) yi}{(cx + d)^2 + c^2y^2}$

Notice that $x^2 + y^2 = z\bar{z}$ and $x = z+\bar{z}$

$=\frac{ac(z\bar{z}) + bd + adz + bc\bar{z}}{c^2(z\bar{z}) + 2cd(\frac{z+\bar{z}}{2}) + d^2}$

$=\frac{ac(z\bar{z}) + bd + adz + bc\bar{z}}{c^2(z\bar{z}) + cdz + cd\bar{z} + d^2}$

$=\frac{(az+b)(c\bar{z} +d)}{(cz+d)(c\bar{z}+d))}$

$=\frac{az + b}{cz + d}$

This is the *Möbius Transformation* which we know is a group  action of $SL(\mathbb{R}, 2)$ on $\mathbb{H}$. But for the sake of argument let us prove it again here

Let $g = \begin{pmatrix}a & b \\ c & d\end{pmatrix}$ and $h = \begin{pmatrix}e & f \\ g & h\end{pmatrix}$ 

$g*h = gh = \begin{pmatrix}ae+bg & af+bh \\ cd+dg & cf+dh\end{pmatrix}$

$\alpha(gh, z) =  \frac{(ae+bg)z + af+bh }{ (cd+dg)z + cf+dh}$

$\alpha(gh, z) =  \frac{aez+bgz + af+bh }{ cdz+dgz + cf+dh}$


$\alpha(h, z) = \frac{ez+f}{gz+h}$

$\alpha(g, \alpha(h, z))= \frac{a(\frac{ez+f}{gz+h}) + b}{c(\frac{ez+f}{gz+h})+d}$

$=\frac{\frac{aez+af+bgz+bh}{gz+h}}{\frac{cez+cf+gzh+dh}{gz+h}}$

$=\frac{aez+af+bgz+bh}{cez+cf+gzh+dh}$

which was the same as $\alpha(gh, z)$.

Hence, proved. $\alpha$ is a group action of $SL(\mathbb{R}, 2)$ on $\mathbb{H}$

---

## c) Show that the subgroup $SO(2) \subset SL(2,\mathbb{R})$ leaves the point $(0,1) \in H$ fixed.

## That is, $\forall \theta \in [0, 2\pi): \begin{pmatrix}\cos\theta & \sin\theta \\ -\sin\theta & \cos\theta\end{pmatrix}\cdot (0, 1) =(0, 1)$


Let us first define what $SO(2)$ is.

$SO(2)$ is the group of *special orthogonal matrices*.

We know that if a matrix is orthogonal, then it's inverse is its transpose and vice versa. That is

$AA^T = A^TA = I$

This implies that the determinant is $\pm1$. Our $SL(2, \mathbb{R})$ has determinant set to be 1. Hence, $SO(2)$ is a subset of $O(2)$ and a subset of $SL(2, \mathbb{R})$

Let us represent the point $(0, 1)$ as a complex number. $(0, 1) = i$

We have to prove that
$\forall \theta \in [0, 2\pi): \alpha(\begin{pmatrix}\cos\theta & \sin\theta \\ -\sin\theta & \cos\theta\end{pmatrix}, i) =i$

We know that $\alpha(g, z) = \frac{az + b}{cz + d}$

Applying that to $SO(2)$ we get, $\frac{i\cos\theta + \sin\theta}{-i\sin\theta + \cos\theta}$

Which simplifies as follows:

$= \frac{i\cos\theta + \sin\theta}{-i\sin\theta + \cos\theta} \times \frac{\sin\theta - i\cos\theta}{\sin\theta - i\cos\theta}$

$= \frac{i^2\cos^2\theta - \sin^2\theta}{\sin\theta\cos\theta -i\cos^2\theta -\sin^2\theta-i^2\sin\theta\cos\theta}$

$= \frac{i^2\cos^2\theta - \sin^2\theta}{\sin\theta\cos\theta -i\cos^2\theta -\sin^2\theta-\sin\theta\cos\theta}$

$= \frac{\sin^2\theta + \cos^2\theta}{-i(\cos^2\theta + \sin^2\theta)}$

We know that $\sin^\theta + \cos^2\theta = 1$

$= \frac{1}{-i} \times \frac{i}{i}$

$= \frac{i}{-i^2} = i$


Hence, proved. $SO(2)$ doesn't move the point $(0, 1)$


# 2. Recall from class that the Fisher information metric for a Gaussian pdf with mean and standard deviation parameters, $(\mu, \sigma) \in \mathbb{H}$, is given by $g = \begin{pmatrix}\frac{1}{\sigma^2} & 0 \\ 0 & \frac{2}{\sigma^2}\end{pmatrix}$

## a) Compute the Christoffel symbols for this metric

Let us remind ourselves how Christoffel symbols are defined

$\displaystyle \Gamma^{k}_{ij} = \frac{1}{2}\sum_{l=1}^{n} g^{kl}\left(
\frac{\partial g_{jl}}{\partial x^i} +
\frac{\partial g_{il}}{\partial x^j} -
\frac{\partial g_{ij}}{\partial x^l}
\right)$

Where $g^{ij}$ are entries of $g^{-1}$


Let us compute $g^{-1}$ first.

For $2\times2$ square matrix $A = \begin{pmatrix}a & b \\ c & d\end{pmatrix}$, we define $A^{-1} = \frac{1}{ad - bc}\begin{pmatrix}d & -b \\ -c & a\end{pmatrix}$

For $g$, $g^{-1} = \frac{1}{\frac{2}{\sigma^4}} \begin{pmatrix}\frac{2}{\sigma^2} & -0 \\ -0 & \frac{1}{\sigma^2}\end{pmatrix}=\begin{pmatrix}\sigma^2 & 0 \\ 0 & \frac{\sigma^2}{2}\end{pmatrix}$

The components of our coordinate chart here is $\mu, \sigma$


So, we have

| $g_{ij}$                                | $g^{ij}$                             | 
| --------------------------------------- | ------------------------------------ |
| $g_{\mu\mu} = \frac{1}{\sigma^2}$       | $g^{\mu\mu} = \sigma^2$              |
| $g_{\mu\sigma} = 0$                     | $g^{\mu\sigma} = 0$                  |
| $g_{\sigma\mu} = 0$                     | $g^{\sigma\mu} = 0$                  |
| $g_{\sigma\sigma} = \frac{2}{\sigma^2}$ | $g^{\sigma\sigma}=\frac{\sigma^2}{2}$ |


Next we have to differentiate these with respect to the components. We only have $\mu, \sigma$. So,

First with respect to $\mu$

$\frac{\partial g_{\mu\mu}}{\partial \mu} = 0$

$\frac{\partial g_{\mu\sigma}}{\partial \mu}= 0$ 

$\frac{\partial g_{\sigma\mu}}{\partial \mu} = 0$

$\frac{\partial g_{\sigma\sigma}}{\partial \mu} = 0$


With respect to $\sigma$

$\frac{\partial g_{\mu\mu}}{\partial\sigma} = \frac{-2}{\sigma^3}$

$\frac{\partial g_{\mu\sigma}}{\partial\sigma}= 0$ 

$\frac{\partial g_{\sigma\mu}}{\partial\sigma} = 0$

$\frac{\partial g_{\sigma\sigma}}{\partial\sigma} = \frac{-4}{\sigma^3}$

Since we have two components we have 8 Christoffel symbols,
But only 6 of them are unique by the Levi-Civita Connection


$\Gamma_{\mu\mu}^{\mu}$

$\Gamma_{\mu\sigma}^{\mu} = \Gamma_{\sigma\mu}^{\mu}$

$\Gamma_{\sigma\sigma}^{\mu}$

$\Gamma_{\mu\mu}^{\sigma}$

$\Gamma_{\mu\sigma}^{\sigma} = \Gamma_{\sigma\mu}^{\sigma}$

$\Gamma_{\sigma\sigma}^{\sigma}$

Substituting the formula,

$\Gamma_{\mu\mu}^{\mu} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\mu l}\left(\frac{\partial g_{\mu l}}{\partial \mu} + \frac{\partial g_{\mu l}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial x^l}\right)$

$\Gamma_{\mu\sigma}^{\mu} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\mu l}\left(\frac{\partial g_{\sigma l}}{\partial \mu} + \frac{\partial g_{\mu l}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial x^l}\right)$

$\Gamma_{\sigma\mu}^{\mu} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\mu l}\left(\frac{\partial g_{\mu l}}{\partial \sigma} + \frac{\partial g_{\sigma l}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial x^l}\right)$

$\Gamma_{\sigma\sigma}^{\mu} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\mu l}\left(\frac{\partial g_{\sigma l}}{\partial \sigma} + \frac{\partial g_{\sigma l}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial x^l}\right)$

$\Gamma_{\mu\mu}^{\sigma} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\sigma l}\left(\frac{\partial g_{\mu l}}{\partial \mu} + \frac{\partial g_{\mu l}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial x^l}\right)$

$\Gamma_{\mu\sigma}^{\sigma} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\sigma l}\left(\frac{\partial g_{\sigma l}}{\partial \mu} + \frac{\partial g_{\mu l}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial x^l}\right)$

$\Gamma_{\sigma\mu}^{\sigma} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\sigma l}\left(\frac{\partial g_{\mu l}}{\partial \sigma} + \frac{\partial g_{\sigma l}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial x^l}\right)$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\sigma l}\left(\frac{\partial g_{\sigma l}}{\partial \sigma} + \frac{\partial g_{\sigma l}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial x^l}\right)$

Expanding the sum

$\Gamma_{\mu\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \mu}\right)+(g^{-1})^{\mu \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \mu}\right)+(g^{-1})^{\mu \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \mu}\right)+(g^{-1})^{\mu \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \mu}\right)+(g^{-1})^{\mu \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \mu}\right)+(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \mu}\right)+(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \mu}\right)+(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \mu}\right)+(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \sigma}\right)\right]$

Let us first get rid of $g^{\mu\sigma}, g^{\sigma\mu}$ terms as they are 0

$\Gamma_{\mu\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \mu}\right)\right]$

$\Gamma_{\mu\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \mu} + \frac{\partial g_{\mu \mu}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \mu}\right)\right]$

$\Gamma_{\sigma\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \mu}\right)\right]$

$\Gamma_{\sigma\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \mu}\right)\right]$

$\Gamma_{\mu\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \mu} - \frac{\partial g_{\mu\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \mu} + \frac{\partial g_{\mu \sigma}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \mu} - \frac{\partial g_{\sigma\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \sigma}\right)\right]$

Substituting the values of $\frac{\partial g_{ij}}{\partial \mu}$ as 0

$\Gamma_{\mu\mu}^{\mu} = 0$

$\Gamma_{\mu\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} \right)\right]$

 $\Gamma_{\sigma\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} \right)\right]$

$\Gamma_{\sigma\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\sigma \mu}}{\partial \sigma} + \frac{\partial g_{\sigma \mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left( -\frac{\partial g_{\mu\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(  \frac{\partial g_{\mu \sigma}}{\partial \sigma} - \frac{\partial g_{\mu\sigma}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\mu \sigma}}{\partial \sigma}   - \frac{\partial g_{\sigma\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \sigma} + \frac{\partial g_{\sigma \sigma}}{\partial \sigma} - \frac{\partial g_{\sigma\sigma}}{\partial \sigma}\right)\right]$


Substituting the values of $\frac{\partial g_{\mu\sigma}}{\partial \sigma} = \frac{\partial g_{\sigma\mu}}{\partial \sigma} = 0$ 

$\Gamma_{\mu\sigma}^{\mu} = 0$

 $\Gamma_{\sigma\mu}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} \right)\right]$
 
 $\Gamma_{\mu\sigma}^{\mu} = \frac{1}{2} \left[(g^{-1})^{\mu \mu}\left(\frac{\partial g_{\mu \mu}}{\partial \sigma} \right)\right]$

$\Gamma_{\sigma\sigma}^{\mu} = 0$

$\Gamma_{\mu\mu}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(- \frac{\partial g_{\mu\mu}}{\partial \sigma}\right)\right]$

$\Gamma_{\mu\sigma}^{\sigma} = 0$

$\Gamma_{\sigma\mu}^{\sigma} = 0$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{1}{2} \left[(g^{-1})^{\sigma \sigma}\left(\frac{\partial g_{\sigma \sigma}}{\partial \sigma} \right)\right]$

Finally we get,


$\Gamma_{\mu\mu}^{\mu} = 0$

$\Gamma_{\mu\sigma}^{\mu} = \frac{-1}{\sigma}$

$\Gamma_{\sigma\mu}^{\mu} = \frac{-1}{\sigma}$

$\Gamma_{\sigma\sigma}^{\mu} = 0$

$\Gamma_{\mu\mu}^{\sigma} =  \frac{1}{2\sigma}$

$\Gamma_{\mu\sigma}^{\sigma} = 0$

$\Gamma_{\sigma\mu}^{\sigma} = 0$

$\Gamma_{\sigma\sigma}^{\sigma} = \frac{-1}{\sigma}$

---

## b) Using your Christofell symbols, confirm that curves of the following form satisfy the geodesic equation:

## $(\mu(t), \sigma(t)) = (a, be^{ct})$, where $a, b, c$ are constants

For a curve to be a geodesic, it has to satisfy the following equation

$\displaystyle \frac{d^2\gamma^k}{dt^2} = -\sum_{i, j=1}^n \Gamma_{ij}^k \frac{d\gamma^i}{dt} \frac{d\gamma^j}{dt}$

Our curve here is $\gamma(t) = (a, be^{ct})$

Let us find the derivatives with respect to $t$

$\frac{d\gamma^{\mu}}{dt} = 0$

$\frac{d\gamma^{\sigma}}{dt} = bc\cdot e^{ct}$

Similarly the second derivatives are

$\frac{d^2\gamma^{\mu}}{dt^2} = 0$

$\frac{d^2\gamma^{\sigma}}{dt^2} = bc^2\cdot e^{ct}$

Let us first check the acceleration in the $\mu$ dimension

$\displaystyle \frac{d^2\gamma^{\mu}}{dt^2} = -\sum_{i,j=1}^{n}\Gamma_{ij}^{\mu} \frac{d\gamma^i}{dt} \frac{d\gamma^j}{dt}$

$\displaystyle \frac{d^2\gamma^{\mu}}{dt^2} = -\left[
\Gamma_{\mu\mu}^{\mu} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\Gamma_{\mu\sigma}^{\mu}\frac{d\gamma^\mu}{dt} \frac{d\gamma^\sigma}{dt} +
\Gamma_{\sigma\mu}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt} +
\Gamma_{\sigma\sigma}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

We know that $\frac{d\gamma^{\mu}}{dt} =0$ and $\Gamma_{\sigma\sigma}^{\mu} = \Gamma_{\mu\mu}^{\mu} =0$, thereby canceling all the terms

Similarly in dimension $\sigma$, we have

$\displaystyle \frac{d^2\gamma^{\sigma}}{dt^2} = -\left[
\Gamma_{\mu\mu}^{\sigma} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\Gamma_{\mu\sigma}^{\sigma}\frac{d\gamma^\mu}{dt} \frac{d\gamma^\sigma}{dt} +
\Gamma_{\sigma\mu}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt} +
\Gamma_{\sigma\sigma}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

The terms with $\frac{d\gamma^\mu}{dt}$ cancel and we are left with

$\displaystyle \frac{d^2\gamma^{\sigma}}{dt^2} = -\left[
\Gamma_{\sigma\sigma}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

$bc^2\cdot e^{ct} =-\left[\frac{-1}{\sigma} \cdot (bc\cdot e^{ct})(bc\cdot e^{ct})\right]$

$bc^2\cdot e^{ct} = \left[\frac{b^2c^2(e^{ct})^2}{\sigma}\right]$

$1 = \left[\frac{b(e^{ct})}{\sigma}\right]$

$\sigma = be^{ct}$

which is the definition of $\sigma$. Hence, the given curve is a geodesic.

## (c) Next, confirm that curves of the following form also satisfy the geodesic equation:

## $(\mu(t), \sigma(t)) = \left(a \tanh(ct)+b, a\frac{\sqrt{2}}{2} \text{sech}(ct)\right)$ where $a, b, c$ are constants

Let us find the first derivatives with respect to $t$


$\frac{d \gamma^{\mu}}{dt} = ac\text{sech}^2(ct)$

$\frac{d\gamma^{\sigma}}{dt} = -ac\frac{\sqrt{2}}{2}\text{sech}(ct)\cdot\tanh(ct)$


Similarly the second order derivatives are,


$\frac{d^2 \gamma^{\mu}}{dt^2} = -2ac^2\text{sech}^2(ct)\tanh(ct)$

$\frac{d^2\gamma^{\sigma}}{dt^2} = \frac{ac^2\text{sech}(ct)\tanh^2(ct)}{\sqrt{2}} - \frac{ac^2\text{sech}^3(ct)}{\sqrt{2}}$


First let us verify the geodesic equation in the $\mu$ component


$\frac{d^2 \gamma^{\mu}}{dt^2}=-\left[
\Gamma_{\mu\mu}^{\mu} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\Gamma_{\mu\sigma}^{\mu}\frac{d\gamma^\mu}{dt} \frac{d\gamma^\sigma}{dt} +
\Gamma_{\sigma\mu}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt} +
\Gamma_{\sigma\sigma}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

$\Gamma_{\sigma\sigma}^{\mu} = \Gamma_{\mu\mu}^{\mu} = 0$ first and the last summation terms cancels out.

$\frac{d^2 \gamma^{\mu}}{dt^2}=-\left[
\Gamma_{\mu\sigma}^{\mu}\frac{d\gamma^\mu}{dt} \frac{d\gamma^\sigma}{dt} +
\Gamma_{\sigma\mu}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt}
\right]$


It is cumbersome to work with these trigonometric functions. Let us express them as $\mu, \sigma$

$\frac{d\gamma^{\mu}}{dt}\frac{d\gamma^{\mu}}{dt} = \left(\frac{2c\sigma^2}{a}\right)^2$

$\frac{d\gamma^{\mu}}{dt}\frac{d\gamma^{\sigma}}{dt} = \frac{-2c^2}{a^2}\cdot\sigma^3\cdot(\mu - b)$

$\frac{d\gamma^{\sigma}}{dt}\frac{d\gamma^{\sigma}}{dt} = \left(\frac{c\sigma(\mu-b)}{a}\right)^2$

$\frac{d^2\gamma^{\mu}}{dt^2} = - \frac{4c^2}{a^2}\sigma^2(\mu-b)$

$\frac{d^2\gamma^{\sigma}}{dt^2} = \frac{c^2\sigma}{a^2}\left[(\mu-b)^2 - 2\sigma^2\right]$

Substituting this, we get 

$- \frac{4c^2}{a^2}\sigma^2(\mu-b) = -\left[2\Gamma_{\sigma\mu}^{\mu} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt}\right]$

$- \frac{4c^2}{a^2}\sigma^2(\mu-b) = -\left[2 (\frac{-1}{\sigma}) \frac{-2c^2}{a^2} \cdot\sigma^3\cdot(\mu - b) \right]$

$- \frac{4c^2}{a^2}\sigma^2(\mu-b) = - \frac{4c^2}{a^2}\sigma^2(\mu-b)$

Hence, the first component is verified.

Similarly in $\sigma$

$\displaystyle \frac{d^2\gamma^{\sigma}}{dt^2} = -\left[
\Gamma_{\mu\mu}^{\sigma} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\Gamma_{\mu\sigma}^{\sigma}\frac{d\gamma^\mu}{dt} \frac{d\gamma^\sigma}{dt} +
\Gamma_{\sigma\mu}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\mu}{dt} +
\Gamma_{\sigma\sigma}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

We know that $\Gamma_{\mu\sigma}^{\sigma} = \Gamma_{\sigma\mu}^{\sigma}= 0$

$\displaystyle \frac{d^2\gamma^{\sigma}}{dt^2} = -\left[
\Gamma_{\mu\mu}^{\sigma} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\Gamma_{\sigma\sigma}^{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

Substituting the Christoffel symbols,

$\displaystyle \frac{d^2\gamma^{\sigma}}{dt^2} = -\left[
\frac{1}{2\sigma} \frac{d\gamma^\mu}{dt} \frac{d\gamma^\mu}{dt} + 
\frac{-1}{\sigma} \frac{d\gamma^\sigma}{dt} \frac{d\gamma^\sigma}{dt} 
\right]$

Substituting the values of the derivatives

$\frac{c^2\sigma}{a^2}\left[(\mu - b)^2 - 2\sigma^2\right]=-\left[\frac{1}{2\sigma}(\frac{2c\sigma^2}{a})^2  - \frac{1}{\sigma}(\frac{c\sigma(\mu - b )}{a})^2\right]$

$\frac{c^2\sigma}{a^2}\left[(\mu - b)^2 - 2\sigma^2\right]=\frac{c^2\sigma}{a^2}\left[(\mu - b)^2 - 2\sigma^2\right]$

Hence, proved.

---

## d) Consider two Gaussians with $(\mu,\sigma)$ parameters: (0,1) and (0,2). Plot their pdf’s in the same graph. What is the geodesic curve between them? Plot this curve in the Poincar´e half plane. What is the geodesic distance between them? Answer the same questions between (0,4) and (0,8). Can you conjecture a general rule about geodesic distances under scaling both standard deviations by the same factor?


If we are provided with a Reimannian metric $g$ which allows for the calculation of the inner product $<\cdot,\cdot>$. Using the inner product we can define the norm of a vector in $T_pM$ as $||v|| = <v, v>^{\frac{1}{2}}$

If we have a curve $\gamma$, the velocity vector is $\gamma'$ which is in $T_pM$.

$L(\gamma) = \int_{a}^b || \gamma'(t) || dt$


Let us use the geodesic curve $\gamma(t) = (a, be^{ct})$, the tangent is as follows $\gamma'(t) = (0, bc\cdot e^{ct})$

Let us calculate the inner product $<\gamma', \gamma'>$

$<\gamma', \gamma'> = \gamma'^T g \gamma'$

$(0, bc\cdot e^{ct}) \begin{pmatrix}\frac{1}{\sigma^2} & 0 \\ 0 & \frac{2}{\sigma^2}\end{pmatrix} (0, bc\cdot e^{ct})$

Let us use $\gamma$ instead of $\sigma$

$(0, bc\cdot e^{ct}) \begin{pmatrix}\frac{1}{b^2e^{2ct}} & 0 \\ 0 & \frac{2}{b^2e^{2ct}}\end{pmatrix} (0, bc\cdot e^{ct})$

$(0, bc\cdot e^{ct}) \begin{pmatrix}\frac{1}{b^2e^{2ct}} & 0 \\ 0 & \frac{2}{b^2e^{2ct}}\end{pmatrix} (0, bc\cdot e^{ct})$


$= (0, bc\cdot e^{ct}) (0, \frac{2}{be^{ct}})$

$= 2c^{2}$

$||\gamma|| = \sqrt{2c^{2}} =\sqrt{2}c$


$L(\gamma)=\int_a^b \sqrt{2}c dt$

$L(\gamma)=\sqrt{2}c\int_a^bdt$

$L(\gamma)=\sqrt{2}c[t]_a^b$

For our case we set $a,b$ to be $0,1$

$L(\gamma)=\sqrt{2}c$

Plugging in our $c=\ln2$, $L(\gamma) = \sqrt{2} (\ln 2) = 0.9802581434685472$



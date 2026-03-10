---
title: HW2
date:  2026-02-27T17:28:21-05:00
tags:
mathjax: true
draft: true
---

# References
- [20260305T120414-spherical_coords](20260305T120414-spherical_coords.md)
- [20260305T124608-partial_derivative](20260305T124608-partial_derivative.md)
---
# 1 Geodesic Equation on $S^2$

-  a) Consider the standard $(\theta, \phi)$ parameterization of the sphere:

$$s: (0, 2\pi) \times (-\frac{\pi}{2}, \frac{\pi}{2}) \rightarrow \mathbb{R}^3$$
$$s(\theta, \phi) = (\cos\theta\cos\phi, \sin\theta\cos\phi, \sin\phi)$$

Write down the equations for the coordinate tangent vectors $\frac{\partial s}{\partial \theta}$ and $\frac{\partial s}{\partial \phi}$. These should be vectors in $\mathbb{R}^3$ that are functions of $\theta, \phi$.

---
![](../assets/Pasted%20image%2020260305124355.png)

In addition to being multivariate, $\mathbf{s}$ is also a *vector-valued function*. We can decompose $s$ into a triplet of multivariate function onto $R$. Now we can perform regular partial differentiation.

$$\mathbf{s}(\theta, \phi) = (s_x(\theta, \phi), s_y(\theta, \phi), s_z(\theta, \phi)) = (\cos\theta\cos\phi, \sin\theta\cos\phi, \sin\phi)$$

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
\frac{\partial s_x(\theta, \phi)}{\partial \theta} \\\
\frac{\partial s_y(\theta, \phi)}{\partial \theta} \\\
\frac{\partial s_z(\theta, \phi)}{\partial \theta} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
\frac{\partial (\cos\theta\cos\phi)}{\partial \theta} \\\
\frac{\partial (\sin\theta\cos\phi)}{\partial \theta} \\\
\frac{\partial (\sin\phi)}{\partial \theta} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
\cos\phi\frac{\partial (\cos\theta)}{\partial \theta} \\\
\cos\phi\frac{\partial (\sin\theta)}{\partial \theta} \\\
\sin\phi\frac{\partial (1)}{\partial \theta} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
\cos\phi\cdot(-\sin\theta) \\\
\cos\phi\cdot(\cos\theta) \\\
0
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
$$
---
$$
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
\frac{\partial s_x(\theta, \phi)}{\partial \phi} \\\
\frac{\partial s_y(\theta, \phi)}{\partial \phi} \\\
\frac{\partial s_z(\theta, \phi)}{\partial \phi} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
\frac{\partial (\cos\theta\cos\phi)}{\partial \phi} \\\
\frac{\partial (\sin\theta\cos\phi)}{\partial \phi} \\\
\frac{\partial (\sin\phi)}{\partial \phi} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
\cos\theta\frac{\partial (\cos\phi)}{\partial \phi} \\\
\sin\theta\frac{\partial (\cos\phi)}{\partial \phi} \\\
\frac{\partial (\sin\phi)}{\partial \phi} 
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
\cos\theta \cdot(-\sin\phi) \\\
\sin\theta \cdot(-\sin\phi) \\\
\cos\phi
\end{bmatrix}
$$

$$
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
$$
---

$$
\frac{\partial \mathbf{s}}{\partial \theta} =
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
,
\frac{\partial \mathbf{s}}{\partial \phi} =
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
$$

---

b) Using the induced metric of $\mathbb{R}^3$, write down the coefficients of the Riemannian metric, $g$, on $S^2$ in terms of the coordinates $\theta, \phi$. Hint: You should end up with a $2 \times 2$ matrix, whose entries are just Euclidean $\mathbb{R}^3$ inner products of the tangent vectors from the previous part. 

Our local coordinates are $\theta, \phi$. We know that the Reimannian metric is given by $g_{ij} = <v^i, v^j>$ where $v^i = \frac{\partial}{\partial x^i}$, $x^i$  is the $i^{th}$ local cordinate.
We only have 2 local coordinates here. Hence we will have a $2 \times 2$ matrix

$$g_{11} = <\frac{\partial}{\partial \theta}, \frac{\partial}{\partial \theta}>$$
$$g_{22} = <\frac{\partial}{\partial \phi}, \frac{\partial}{\partial \phi}>$$
$$g_{12} = <\frac{\partial}{\partial \theta}, \frac{\partial}{\partial \phi}>$$

$$g_{11} = < 
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
,
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
>$$

$$g_{11} = 
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
\cdot
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
$$

$$
g_{11} = \sin^2\theta \cos^2\phi + \cos^2\theta \cos^2\phi =
\cos^2\phi (\sin^2\theta + \cos^2\theta) = \cos^2\phi
$$

$$
g_{12} = <
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
,
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
>
$$

$$
g_{12} = 
\begin{bmatrix}
-\sin\theta\cos\phi \\\
\cos\theta\cos\phi \\\
0
\end{bmatrix}
\cdot
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
$$

$$
g_{12} = \sin\theta \cos\theta \sin\phi \cos\phi - \sin\theta \cos\theta \sin\phi \cos\phi + 0
$$

$$
g_{12} = 0
$$


$$
g_{22} = 
<
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
,
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
>
$$


$$
g_{22} = 
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
\cdot
\begin{bmatrix}
-\cos\theta \sin\phi \\\
-\sin\theta \sin\phi \\\
\cos\phi
\end{bmatrix}
$$

$$
g_{22} = \cos^2\theta\sin^2\phi + \sin^2\theta\sin^2\phi + \cos^2\phi
$$

$$
g_{22} = \sin^2\phi(\cos^2\theta + \sin^2\theta) + \cos^2\phi
$$
$$
g_{22} = \sin^2\phi + \cos^2\phi = 1
$$

$$
g = \begin{bmatrix}
\cos^2\phi && 0 \\\
0 && 1
\end{bmatrix}
$$

---
c) Compute the inverse metrics $g^{-1}$.

 For a $2\times2$ matrix $\begin{bmatrix}a&&b \\\ c &&d\end{bmatrix}$,
 
 it's inverse is given by $\frac{1}{ad - bc}\begin{bmatrix}d&&-b \\\ -c &&a\end{bmatrix}$

For our $g = \begin{bmatrix}\cos^2\phi && 0 \\\ 0 && 1\end{bmatrix}$

we get 
$g^{-1} = \frac{1}{\cos^2\phi}\begin{bmatrix}1 && 0 \\\ 0 && \cos^2\phi\end{bmatrix}$

$g^{-1} = \begin{bmatrix}\frac{1}{\cos^2\phi} && 0 \\\ 0 && 1\end{bmatrix}$

---
d) Compute the Christoffel symbols, $\Gamma^{k}_{ij}$

By the way the Christoffel symbols are indexed we see that there are 8 of them. They are:
- $\Gamma_{\theta\theta}^{\theta}$
- $\Gamma_{\theta\phi}^{\theta}$
- $\Gamma_{\phi\theta}^{\theta}$
- $\Gamma_{\phi\phi}^{\theta}$
- $\Gamma_{\theta\theta}^{\phi}$
- $\Gamma_{\theta\phi}^{\phi}$
- $\Gamma_{\phi\theta}^{\phi}$
- $\Gamma_{\phi\phi}^{\phi}$

By the Levi-Citia connection, $\Gamma_{ij}^k = \Gamma_{ji}^k$. We only have 6 unique ones
- $\Gamma_{\theta\theta}^{\theta}$
- $\Gamma_{\theta\phi}^{\theta}$
- $\Gamma_{\phi\phi}^{\theta}$
- $\Gamma_{\theta\theta}^{\phi}$
- $\Gamma_{\theta\phi}^{\phi}$
- $\Gamma_{\phi\phi}^{\phi}$

We know that 

$\Gamma_{ij}^{k} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{kl}\left(\frac{\partial g_{jl}}{\partial x^i} + \frac{\partial g_{il}}{\partial x^j} - \frac{\partial g_{ij}}{\partial x^l}\right)$

Expanding $i,j,k$

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\theta l}\left(\frac{\partial g_{\theta l}}{\partial \theta} + \frac{\partial g_{\theta l}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial x^l}\right)$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\theta l}\left(\frac{\partial g_{\phi l}}{\partial \theta} + \frac{\partial g_{\theta l}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial x^l}\right)$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\theta l}\left(\frac{\partial g_{\phi l}}{\partial \phi} + \frac{\partial g_{\phi l}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial x^l}\right)$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\phi l}\left(\frac{\partial g_{\theta l}}{\partial \theta} + \frac{\partial g_{\theta l}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial x^l}\right)$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\phi l}\left(\frac{\partial g_{\phi l}}{\partial \theta} + \frac{\partial g_{\theta l}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial x^l}\right)$


$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2}\sum_{l = 1}^n(g^{-1})^{\phi l}\left(\frac{\partial g_{\phi l}}{\partial \phi} + \frac{\partial g_{\phi l}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial x^l}\right)$




Expanding $l$

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2} \left[(g^{-1})^{\theta \theta}\left(\frac{\partial g_{\theta \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \theta}\right)+(g^{-1})^{\theta \phi}\left(\frac{\partial g_{\theta \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[(g^{-1})^{\theta \theta}\left(\frac{\partial g_{\phi \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \theta}\right)+(g^{-1})^{\theta \phi}\left(\frac{\partial g_{\phi \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2} \left[(g^{-1})^{\theta \theta}\left(\frac{\partial g_{\phi \theta}}{\partial \phi} + \frac{\partial g_{\phi \theta}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \theta}\right)+(g^{-1})^{\theta \phi}\left(\frac{\partial g_{\phi \phi}}{\partial \phi} + \frac{\partial g_{\phi \phi}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[(g^{-1})^{\phi \theta}\left(\frac{\partial g_{\theta \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \theta}\right)+(g^{-1})^{\phi \phi}\left(\frac{\partial g_{\theta \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2} \left[(g^{-1})^{\phi \theta}\left(\frac{\partial g_{\phi \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \theta}\right)+(g^{-1})^{\phi \phi}\left(\frac{\partial g_{\phi \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2} \left[(g^{-1})^{\phi \theta}\left(\frac{\partial g_{\phi \theta}}{\partial \phi} + \frac{\partial g_{\phi \theta}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \theta}\right)+(g^{-1})^{\phi \phi}\left(\frac{\partial g_{\phi \phi}}{\partial \phi} + \frac{\partial g_{\phi \phi}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \phi}\right)\right]$

Substituting the values of $g^{-1}$

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\theta \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \theta}\right)+0\left(\frac{\partial g_{\theta \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\phi \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \theta}\right)+0\left(\frac{\partial g_{\phi \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\phi \theta}}{\partial \phi} + \frac{\partial g_{\phi \theta}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \theta}\right)+0\left(\frac{\partial g_{\phi \phi}}{\partial \phi} + \frac{\partial g_{\phi \phi}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[0\left(\frac{\partial g_{\theta \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \theta}\right)+1\left(\frac{\partial g_{\theta \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2} \left[0\left(\frac{\partial g_{\phi \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \theta}\right)+1\left(\frac{\partial g_{\phi \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2} \left[0\left(\frac{\partial g_{\phi \theta}}{\partial \phi} + \frac{\partial g_{\phi \theta}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \theta}\right)+1\left(\frac{\partial g_{\phi \phi}}{\partial \phi} + \frac{\partial g_{\phi \phi}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \phi}\right)\right]$

Simplifying

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\theta \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \theta}\right)\right]$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\phi \theta}}{\partial \theta} + \frac{\partial g_{\theta \theta}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \theta}\right)\right]$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial g_{\phi \theta}}{\partial \phi} + \frac{\partial g_{\phi \theta}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \theta}\right)\right]$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial g_{\theta \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \theta} - \frac{\partial g_{\theta\theta}}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial g_{\phi \phi}}{\partial \theta} + \frac{\partial g_{\theta \phi}}{\partial \phi} - \frac{\partial g_{\theta\phi}}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial g_{\phi \phi}}{\partial \phi} + \frac{\partial g_{\phi \phi}}{\partial \phi} - \frac{\partial g_{\phi\phi}}{\partial \phi}\right)\right]$

Substituting the values of $g_{ij}$

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial \cos^2\phi}{\partial \theta} + \frac{\partial \cos^2\phi}{\partial \theta} - \frac{\partial \cos^2\phi}{\partial \theta}\right)\right]$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial 0}{\partial \theta} + \frac{\partial \cos^2\phi}{\partial \phi} - \frac{\partial 0}{\partial \theta}\right)\right]$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial 0}{\partial \phi} + \frac{\partial 0}{\partial \phi} - \frac{\partial 1}{\partial \theta}\right)\right]$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial 0}{\partial \theta} + \frac{\partial 0}{\partial \theta} - \frac{\partial \cos^2\phi}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial 1}{\partial \theta} + \frac{\partial 0}{\partial \phi} - \frac{\partial 0}{\partial \phi}\right)\right]$

$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2} \left[\left(\frac{\partial 1}{\partial \phi} + \frac{\partial 1}{\partial \phi} - \frac{\partial 1}{\partial \phi}\right)\right]$

Removing constant derivatives 

$\Gamma_{\theta\theta}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(0 + 0 + 0\right)\right]$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(0 + \frac{\partial \cos^2\phi}{\partial \phi} - 0\right)\right]$

$\Gamma_{\phi\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(0 + 0 - 0\right)\right]$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[\left(0 + 0 - \frac{\partial \cos^2\phi}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = \frac{1}{2} \left[\left(0 + 0 - 0\right)\right]$

$\Gamma_{\phi\phi}^{\phi} = \frac{1}{2} \left[\left(0 + 0 - 0\right)\right]$

Simplifying 

$\Gamma_{\theta\theta}^{\theta} = 0$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(\frac{\partial \cos^2\phi}{\partial \phi} \right)\right]$

$\Gamma_{\phi\phi}^{\theta} = 0$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[\left(- \frac{\partial \cos^2\phi}{\partial \phi}\right)\right]$

$\Gamma_{\theta\phi}^{\phi} = 0$

$\Gamma_{\phi\phi}^{\phi} = 0$

We know that

$\frac{\partial \cos^2\phi}{\partial \phi} =2\cos\phi(-\sin\phi) = -2\sin\phi\cos\phi$

Simplifying
$\Gamma_{\theta\theta}^{\theta} = 0$

$\Gamma_{\theta\phi}^{\theta} = \frac{1}{2} \left[\frac{1}{\cos^2\phi}\left(-2\sin\phi\cos\phi \right)\right]$

$\Gamma_{\phi\phi}^{\theta} = 0$

$\Gamma_{\theta\theta}^{\phi} = \frac{1}{2} \left[\left(- -2\sin\phi\cos\phi \right)\right]$

$\Gamma_{\theta\phi}^{\phi} = 0$

$\Gamma_{\phi\phi}^{\phi} = 0$

Simplifying

$\Gamma_{\theta\theta}^{\theta} = 0$

$\Gamma_{\theta\phi}^{\theta} = - \tan\phi$

$\Gamma_{\phi\phi}^{\theta} = 0$

$\Gamma_{\theta\theta}^{\phi} = \sin\phi\cos\phi$

$\Gamma_{\theta\phi}^{\phi} = 0$

$\Gamma_{\phi\phi}^{\phi} = 0$

Listing out all the Christoffel symbols

$\Gamma_{\theta\theta}^{\theta} = 0$

$\Gamma_{\theta\phi}^{\theta} = - \tan\phi$

$\Gamma_{\phi\theta}^{\theta} = - \tan\phi$

$\Gamma_{\phi\phi}^{\theta} = 0$

$\Gamma_{\theta\theta}^{\phi} = \sin\phi\cos\phi$

$\Gamma_{\theta\phi}^{\phi} = 0$

$\Gamma_{\phi\theta}^{\phi} = 0$

$\Gamma_{\phi\phi}^{\phi} = 0$

---
e) Show that the equator $\gamma(t) = s(t, 0)$ is a geodesic

We know that any curve satisfying the following equation is a geodesic

$\frac{d^2\gamma^k}{dt^2} = -\sum_{i,j = 1}^n \Gamma_{ij}^k (\gamma(t)) \frac{d\gamma^i}{dt}\frac{d\gamma^j}{dt}$ 

Let us calculate all the derivatives of $\gamma$

$\gamma^\theta(t) = t$

$\gamma^\phi(t) = 0$

$\frac{d\gamma^\theta}{dt} = 1$

$\frac{d\gamma^\phi}{dt} = 0$

$\frac{d^2\gamma^\theta}{dt^2} = 0$

$\frac{d^2\gamma^\phi}{dt^2} = 0$

Let us first consider the $\theta$ component of the geodesic equation

$\frac{d^2\gamma^\theta}{dt^2} = -\sum_{i,j = 1}^n \Gamma_{ij}^\theta (\gamma(t)) \frac{d\gamma^i}{dt}\frac{d\gamma^j}{dt}$ 

Substituting the values of the non-zero Christoffel symbols

$0 = -\left(\Gamma_{\theta \phi}^\theta  \frac{d\gamma^\theta}{dt} \frac{d\gamma^\phi}{dt} + \Gamma_{\phi \theta}^\theta  \frac{d\gamma^\phi}{dt} \frac{d\gamma^\theta}{dt}\right)$

$0 = -\left(-\tan\phi  \frac{d\gamma^\theta}{dt} \frac{d\gamma^\phi}{dt} +  -\tan\phi \frac{d\gamma^\phi}{dt} \frac{d\gamma^\theta}{dt}\right)$

$0 = -\left(-\tan\phi  \times 0 \times 1 +  -\tan\phi \times 0 \times 1\right)$

$0 = 0$

This isn't very interesting


Considering $\phi$ component of the geodesic equation

$\frac{d^2\gamma^\phi}{dt^2} = -\sum_{i,j = 1}^n \Gamma_{ij}^\phi (\gamma(t)) \frac{d\gamma^i}{dt}\frac{d\gamma^j}{dt}$ 

Substituting the values of the non-zero Christoffel symbols

$0 = -\left( \Gamma_{\theta\theta}^\phi \frac{d\theta}{dt} \frac{d\theta}{dt}\right)$ 

$0 = -\left( -\sin\phi\cos\phi\times 1 \times 1 \right)$ 

$0 = -\left( \sin\phi\cos\phi\right)$ 

Either $\sin\phi = 0$ or $\cos\phi = 0$

For the equator $\phi = 0$ which means that $\sin\phi = 0$, hence the equator is a geodesic

---

f) Provide an argument that all great circles (circles on $S^2$ with radius = 1) are geodesics. You don’t need a lengthy or precise proof, just a brief and informal argument will suffice.

Let us rewrite the geodesic equation of the sphere

$\frac{d^2\gamma^\theta}{dt^2} = 2\tan\phi\frac{d\gamma^\theta}{dt}\frac{d\gamma^\phi}{dt}$

$\frac{d^2\gamma^\phi}{dt^2} = -\sin\phi\cos\phi\frac{d\gamma^\theta}{dt}\frac{d\gamma^\theta}{dt}$


Let us first prove that all longitude lines are great circles

$\gamma(t) = s(\theta_0, \lambda t)$ where $\theta_0, \lambda$ are some constants

$\gamma_\theta = \theta_0$

$\gamma_\phi = \lambda t$

$\frac{d\gamma_\theta}{dt} = 0$

$\frac{d^2\gamma_\theta}{dt^2} = 0$

$\frac{d\gamma_\phi}{dt} = \lambda$

$\frac{d^2\gamma_\phi}{dt^2} = 0$

Substituting into the geodesic equation,

$0 = 2\tan\phi \times 0\times k$
$0 = 0$

$0 = -\sin\phi\cos\phi\times0\times0$
$0 = 0$

Hence our $\gamma$ satisfies the equation and thus a geodesic. By varying $\theta_0$ we can select any of the longitudes. This covers the vertical case.

We already saw that the equator is a geodesic.

All of these curves are mirror images of each other with their "pole" shifted. The is nothing special about the pole point we chose. It could have been any arbitrary point on the sphere. This is because of the innate symmetry of a sphere. A sphere is formed by rotating a great circle about an axis. The starting position doesn't matter as after a full rotation the same sphere will be formed regardless. The axis also doesn't matter as any arbitrarily slanted axis will still produce the same sphere.

It is due to this symmetry that if the equator is a geodesic then all great circles must be a geodesic.

![](../assets/Pasted%20image%2020260310115711.png)


# 2 Statistics on Shape Manifolds

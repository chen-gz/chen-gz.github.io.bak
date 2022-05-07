---
title: Fast Fourier tranform
---

A **fast Fourier transform** (**FFT**) is an [algorithm](https://en.wikipedia.org/wiki/Algorithm) that computes the [discrete Fourier transform](https://en.wikipedia.org/wiki/Discrete_Fourier_transform) (DFT) of a sequence, or its inverse (IDFT). [^1]

The last post is really good for understand and implement fft. 

The part I want to explain is for following statement in the post.

> This function works with polynomials with integer coefficients, however you can also adjust it to work with other types. Since there is some error when working with complex numbers, we need round the resulting coefficients at the end.
>
> Finally the function for **multiplying** two long numbers practically doesn't differ from the function for multiplying polynomials. The only thing we have to do afterwards, is to normalize the number:

~~~ cpp
    int carry = 0;
    for (int i = 0; i < n; i++)
        result[i] += carry;
        carry = result[i] / 10;
        result[i] %= 10;
    }
~~~

This paragraph says we can use fft to multiplying two long number. 

A number we can write as $A = a_0 \times 10^0 + a_1 \times 10^1 + ... + a_{n-1} \times 10 ^{n-1}$ . That's easy to see multiply two large number is same as multiple two polynomials.

## Source code from web

### recursive version

Recursive version will take more space.

#### FFT

<details>
``` cpp
using cd = complex<double>;
const double PI = acos(-1);

void fft(vector<cd> & a, bool invert) {
    int n = a.size();
    if (n == 1)
        return;

    vector<cd> a0(n / 2), a1(n / 2);
    for (int i = 0; 2 * i < n; i++) {
        a0[i] = a[2*i];
        a1[i] = a[2*i+1];
    }
    fft(a0, invert);
    fft(a1, invert);
    
    double ang = 2 * PI / n * (invert ? -1 : 1);
    cd w(1), wn(cos(ang), sin(ang));
    for (int i = 0; 2 * i < n; i++) {
        a[i] = a0[i] + w * a1[i];
        a[i + n/2] = a0[i] - w * a1[i];
        if (invert) {
            a[i] /= 2;
            a[i + n/2] /= 2;
        }
        w *= wn;
    }
}
```
</details>

#### multiply two polynomials

<details>
``` cpp
vector<int> multiply(vector<int> const& a, vector<int> const& b) {
    vector<cd> fa(a.begin(), a.end()), fb(b.begin(), b.end());
    int n = 1;
    while (n < a.size() + b.size()) 
        n <<= 1;
    fa.resize(n);
    fb.resize(n);

    fft(fa, false);
    fft(fb, false);
    for (int i = 0; i < n; i++)
        fa[i] *= fb[i];
    fft(fa, true);
    
    vector<int> result(n);
    for (int i = 0; i < n; i++)
        result[i] = round(fa[i].real());
    return result;
}
```
</details>

### in-place version

<details> 
``` cpp
using cd = complex<double>;
const double PI = acos(-1);

void fft(vector<cd> & a, bool invert) {
    int n = a.size();

    for (int i = 1, j = 0; i < n; i++) {
        int bit = n >> 1;
        for (; j & bit; bit >>= 1)
            j ^= bit;
        j ^= bit;
    
        if (i < j)
            swap(a[i], a[j]);
    }
    
    for (int len = 2; len <= n; len <<= 1) {
        double ang = 2 * PI / len * (invert ? -1 : 1);
        cd wlen(cos(ang), sin(ang));
        for (int i = 0; i < n; i += len) {
            cd w(1);
            for (int j = 0; j < len / 2; j++) {
                cd u = a[i+j], v = a[i+j+len/2] * w;
                a[i+j] = u + v;
                a[i+j+len/2] = u - v;
                w *= wlen;
            }
        }
    }
    
    if (invert) {
        for (cd & x : a)
            x /= n;
    }
}
```
</details>


## Resources

​	https://zongpitt.com/posts/fourier-series/
​	https://zongpitt.com/posts/fourier-transform/
​	https://zongpitt.com/posts/discrete-fourier-transfrom/
​	https://en.wikipedia.org/wiki/Fast_Fourier_transform
​	https://en.wikipedia.org/wiki/Fourier_analysis
​	https://cp-algorithms.com/algebra/fft.html



[^1]: https://en.wikipedia.org/wiki/Fast_Fourier_transform

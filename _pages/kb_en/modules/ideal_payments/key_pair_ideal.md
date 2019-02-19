---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-14 11:30 +0400'
identifier: ref_1Vi2lP6E
title: Obtaining a Key Pair for iDEAL Payments
order: 120
published: true
---
It is possible to use a "self-signed certificate", or to purchase a certificate from a Certificate Authority (CA).

If you are going to use a self-signed certificate, you can create your public and private keys as follows: 

1.  Download the “OpenSSL Library” from [http://www.openssl.org](http://www.openssl.org). You can find more information on the “certificate generating utility” at:[http://www.openssl.org/docs/apps/req.html](http://www.openssl.org/docs/apps/req.html). You may also generate the key pair using other software. If so, please use the manual that comes with your software.

2.  Generate an “RSA private key” using the following command (choose your own password for the field [privateKeyPass]):

    ```php
    openssl genrsa –aes-128 –out priv.pem –passout pass:[privateKeyPass] 2048 
    ```

3.  Create a certificate based on the “RSA private key”  (use the same password as in the previous step for the field [privateKeyPass]): 

    ```php
    openssl req –x509 –sha256 –new –key priv.pem –passin pass:[privateKeyPass]  
    -days 1825 –out cert.cer
    ```

    The previous OpenSSL command will generate a certificate in X.509 format, with a validity period of 5 years (1825 days), the maximum for iDEAL signing certificates.

4.  The file priv.pem contains the private key; it needs to be kept private. The file cert.cer contains the certificate with the public key; this file needs to be communicated to Rabobank iDEAL. 

If you are going to buy a certificate from a Certificate Authority (CA), rather than generate the certificate yourself, you should note the following: the CA signing certificate (and the rest of the certificate chain) must use hashing algorithms and key lengths that are at least as secure or better than those of the Merchant certificate.
Therefore CA-certificates used to sign certificates for electronic signatures must use at least SHA-256 for hashing and 2,048 bits for RSA keys.
Signing certificates should also have a maximum validity period of 5 years.

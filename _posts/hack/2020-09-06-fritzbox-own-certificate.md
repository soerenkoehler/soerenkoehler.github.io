---
layout: post
title: Using Diskstation to create Your Own Certificate in Fritzbox
tags: [english, hack, fritzbox, synology, security]
---
### The Situation

As a Fritzbox owner you may know, that when you access the box via https, it
presents a self signed SSL certificate which gets flagged a security issue in
most modern browsers. I was not happy creating exception rules. Further, the
Fritzbox seemed to randomly switch between CNs and Firefox wouldn't import both.

### The Long Way Around

On the net you find a lot of tutorials explaining how to create a CA and a
signed server certificate using OpenSSL. I was not in the mood for this.

### The Shorter Way - With Obstacles

Then I remembered, that I already had a CA set up - the one signing the
certificate for my Synology NAS. And my memory said, it was fully created in the
NAS Dashboard. Could I create a certificate for my Fritzbox using the NAS?

Well, yes. Caveat: If you go to the certificates page of the security applet and
simply select "Add" it will create another certificate including CA for the
diskstation. The right way goes via the "CSR" button and includes the following
steps:

1.  Click "CSR", select "Create certificate signing request". Enter `fritz.box`
    as the common name. Save and extract the result.

2.  Click "CSR" again, this time select "Sign certificate signing request".
    Select the previously generate *.csr file. Enter a sufficient validity
    period and add the following alternate names:
    ```
    fritz.box;www.fritz.box;fritz.nas;www.fritz.nas;myfritz.box;www.myfritz.box
    ```
    Save and extract the result.

3.  _Here comes the trick not told in the Fritzbox documentation:_

    _Concatenate the generated *.crt file from step 2 and the *.key file from
    step 1 into one file. Store it somewhere, it's your new custom certificate
    for the Fritzbox._

4.  Now simply upload the new combined certificate file onto your Fritzbox
    ("Internet / Permit Access / FRITZ!Box Services"). If you already installed
    the NAS CA certificate in your browser(s) you're done here.

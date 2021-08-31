#!/bin/bash
> domain
chmod 777 domain
> mxpostman
chmod 777 mxpostman
> uniqlistdom
chmod 777 uniqlistdom
cat postman | while read y
do
z=${y#*@} 
echo $z >> domain
done
cat domain | sort | uniq >> uniqlistdom
dig -f uniqlistdom MX +noall +answer >> mxpostman
rm domain
rm uniqlistdom
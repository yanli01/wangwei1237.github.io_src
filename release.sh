#!/bin/bash

if [ $# -ne 1 ]
then
    echo "::error the parameters error, please check!!!"
    exit 1
fi

ROOT_PATH=$1

BOOKS=('chaos-engineering' 
'digital_video_concepts' 
'temperature-of-the-idioms' 
'monolith-to-microservices' 
'discovery-the-unpredictable-risk' 
'Kubernetes-in-Action-Second-Edition')

cd public
for ((i=0; i <${#BOOKS[@]}; i++))
do
    rm -rf ${BOOKS[i]} && /bin/cp -rf $ROOT_PATH/books/${BOOKS[i]} ${BOOKS[i]}
done

book1="\ \ <url><loc>https://wangwei1237.gitee.io/digital_video_concepts/</loc><lastmod>2020-06-17T02:55:11.212Z</lastmod></url>"
book2="\ \ <url><loc>https://wangwei1237.github.io/monolith-to-microservices/</loc><lastmod>2020-06-17T02:55:11.212Z</lastmod></url>"

sed -i "4 i ${book1} " sitemap.xml

sed -i "4 i ${book2} " sitemap.xml

cp sitemap.xml bd_sitemap.xml && sed -i "s/github.io/gitee.io/g" bd_sitemap.xml
cp monolith-to-microservices/sitemap.xml m2m_sitemap.xml
cp m2m_sitemap.xml m2m_e_sitemap.xml && sed -i "s/gitee/github/g" m2m_e_sitemap.xml

cd .. 
cp -r docs/* public/shares && cd public/shares && rm -rf GraphQL_in_Action.pdf WebAssembly-in-Action.pdf
cd .. 

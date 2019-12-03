

run () {
    title=$1
    url=$2
    echo
    echo "############### " $title
    echo "URL: "$url
    echo
    curl -i $url
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    
}

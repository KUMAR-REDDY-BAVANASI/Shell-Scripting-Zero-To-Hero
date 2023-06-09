PERSON1=$1
PERSON2=$2

echo "${PERSON1}: Hi, ${PERSON2}"
echo "${PERSON2}: Hello, ${PERSON1}"
echo "${PERSON1}: Good Morning ${PERSON2}!!!"
echo "${PERSON2}: Very Good Morning ${PERSON1}!!!"

#how to know how many args are passed.

echo "####################################"
echo "Filename: $0"

echo "Number of args passed are: $#"

echo "What are the args passed: $@"
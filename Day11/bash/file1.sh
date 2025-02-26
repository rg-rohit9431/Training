echo "Hello from bash"

name="rohit"
echo "Hello $name"

salary=8000
echo "salary $salary"
echo "Monthly salary: $((salary*30))"

num1=10
num2=20
echo "Sum : $((num1+num2))"

numbers=(10 20 30 40)
echo "First number ${numbers[0]}"
echo "First number ${numbers[1]}"

name=("alex" "bob")
echo "First number ${name[0]}"
echo "First number ${name[1]}"

readonly pi=31.4
echo $pi
# pi=3.14

echo "Current User: $(whoami)"
echo "Current Home: $HOME"


echo "Script Name: $0"
echo "No of Script: $#"
echo "First Script Name: $1"
echo "Second Script Name: $2"
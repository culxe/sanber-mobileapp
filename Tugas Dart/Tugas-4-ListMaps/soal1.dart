List<int> range(int num1, int num2) {
    if (num1 < num2) {
        return List<int>.generate(num2 - num1 + 1, (index) => num1 + index);
    } else if (num1 > num2) {
        return List<int>.generate(num1 - num2 + 1, (index) => num1 - index);
    } else {
        return [num1];
    }
}

void main(List<String> args){
    print(range(10,1));
    print(range(1,10));
}
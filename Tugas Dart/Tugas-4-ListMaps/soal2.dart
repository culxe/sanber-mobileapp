List<int> rangeWithStep(int num1, int num2, int step) {
    if (num1 < num2) {
        int length = ((num2 - num1) / step).ceil();
        return List.generate(length, (index) => num1 + (index * step));
    }
    else if (num1 > num2) {
        int length = ((num1 - num2) / step).ceil();
        return List.generate(length, (index) => num1 - (index * step));
    } else {
        return [num1];
    }
}

void main(List<String> args){
    print(rangeWithStep(30,23,3));
}
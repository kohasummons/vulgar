const arr = [1, 2, 3, 4, 20];

function rem(i) {
    // arr[i] = arr[arr - 1];
    arr.push(arr[i])
    // arr.pop();

    return arr
}

const redux = arr.reduce((acc, cur) => {
    console.log(acc);
    return acc + cur;
}, 10)

// console.log(rem(1))
console.log(redux)


const shoe = arr.slice(0, -2);


console.log(shoe)
const be = document.querySelector("#before");
const af = document.querySelector("#after");
const change = document.querySelector("#change");

change.addEventListener('click',changeStrAll);

function changeStrAll(){
    //문자열 2개이상 변환
    let beValue = be.value;
    const allArr = beValue.split('/n');
    changeStr(allArr);
}

function changeStr(allArr){
    //문자열 1개만 변환
    af.innerHTML = '';
    for(let i=0; i<allArr.length;i++){
        let arr = [...allArr[i]];
        for(let j=0; j<arr.length;j++){
            if(arr[j] === '_'){
                arr[j] = '',
                arr[j+1] = arr[j+1].toUpperCase();
            }
        }
        afValue = arr.toString().replace(/,/g,"");
        af.innerHTML += afValue;
    }
}
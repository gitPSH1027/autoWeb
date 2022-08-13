const be1 = document.querySelector("#before1");
const af1 = document.querySelector("#after1");
const change1 = document.querySelector("#change1");

change1.addEventListener('click',changeStrAll1);

function changeStrAll1(){
    //문자열 2개이상 변환
    let beValue1 = be1.value;
    const allArr1 = beValue1.split('/n');
    changeStr1(allArr1);
}

function changeStr1(allArr1){
    //문자열 1개만 변환
    af1.innerHTML = '';
    for(let i=0; i<allArr1.length;i++){
        let arr1 = [...allArr1[i]];
        for(let j=0; j<arr1.length;j++){
            // \n x, 0~9 x, upper str o
            if(arr1[j] === arr1[j].toUpperCase() && arr1[j] !== "\n" && isNaN(parseInt(arr1[j]))){
                arr1[j] = '_'+arr1[j].toLowerCase();
            }
        }
        afValue1 = arr1.toString().replace(/,/g,"");
        af1.innerHTML += afValue1;
    }
}
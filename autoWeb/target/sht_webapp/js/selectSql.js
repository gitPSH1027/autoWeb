const table = document.querySelector("#table");
const field = document.querySelector("#field");
const valu = document.querySelector("#valu");
const change = document.querySelector("#change");
const zone1 = document.querySelector("#zone1");

change.addEventListener('click',makeSql);

function makeSql(){
    let table = document.querySelector("#table").value;
    let field = document.querySelector("#field").value;
    let valu = document.querySelector("#valu").value;
    let html = 
    `select 
    * 
from 
    ${table} 
where 
    ${field} = '${valu}'`;
   zone1.value = html;

   zone1.select();
   document.execCommand('copy');
   alert("copied"); 
}

valu.addEventListener('keyup',subEnter);

function subEnter(e){
    if(e.keyCode === 13){
        e.preventDefault();
        makeSql();
    }
}

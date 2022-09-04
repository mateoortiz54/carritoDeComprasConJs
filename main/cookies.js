function escribiendo(){
    sessionStorage.setItem("migalletica",5);


}

function leer(){
    let cooki = sessionStorage.getItem("migalletica");
    if( cooki==null || cooki=='null'){
        alert('no existe')
    }
}

function limpiar(){
    
}
function findcookie(name){
    let ckary=document.cookie.split("; ");
    let ckget = null;
    ckget = ckary.find(function(ary){
        return (name+"=" === ary.substr(0, name.length+1));
    });

    if (ckget != null) {
        return ckget.substr(name.length+1);
    } else {
        return ckget;
    }
}

function logout(){
    let dd = new Date();
    document.cookie="userid='';expires="+dd.toUTCString();
    location.href = "/resume/";
}
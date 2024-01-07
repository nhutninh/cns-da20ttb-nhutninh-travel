function kiemtra(){
    var result = "";

    var a = document.forms["formGPT"]["a"].value;
    var b = document.forms["formGPT"]["b"].value;

    

        if (a == '') {
            result = 'Bạn chưa nhập số a';
        } else if (b == '') {
            result = 'Bạn chưa nhập số b';
        } else if (a == 0) {
            result = 'Số a phải nhập khác 0';
        } else {
            result = -(b) / a;
        }
        alert(result);
    }
    
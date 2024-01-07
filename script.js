function ktdl() {
        const labelWarning = document.getElementById("warning-check");

        var bankinhInput = document.forms["main-form"]["bankinh"].value;
        if (!/^(\d+(\.\d+)?)?$/.test(bankinhInput) || bankinhInput == "") {
            labelWarning.innerHTML = "* Vui lòng nhập số nguyên hoặc số thực";
            return false;
        }

        return true;
}
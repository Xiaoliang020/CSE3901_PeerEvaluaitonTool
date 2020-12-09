let check = function() {
    if (document.getElementById('password').value ==
        document.getElementById('password_confirm').value) {
        document.getElementById('message').style.color = 'green';
        document.getElementById('message').innerHTML = 'matching';
    } else {
        document.getElementById('message').style.color = 'red';
        document.getElementById('message').innerHTML = 'not matching';
    }
}

function score (){
    let score1 = document.getElementsByClassName("Communication").checked;
    let score2 = document.getElementsByClassName("Contribution").checked;
    let score3 = document.getElementsByClassName("WorkQuality").checked;
    return score1+score2+score3;
}

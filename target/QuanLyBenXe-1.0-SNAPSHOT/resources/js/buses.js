/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



function deleteBuses(endpoint, id, btn) {
    let r = document.getElementById(`row${id}`);
    let load = document.getElementById(`load${id}`);
    load.style.display = "block";
    btn.style.display = "none";
    fetch(endpoint, {
        method: 'delete'
    }).then(function (res) {
        if (res.status !== 204)
            alert("Không thể xóa!!!");
        load.style.display = "none";
        r.style.display = "none";
    }).catch(function (err) {
        console.error(err);
        btn.style.display = "block";
        load.style.display = "none";
    });
}

function getBuses(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let d = document.getElementById("myBuses");
        if (d !== null) {
            let h = "";
            for (let i = 0; i < data.length; i++)
                h += `
                <tr id="row${data[i].bid}">
                    <td>${data[i].bid}</td>
                    <td><img src="${data[i].image}" width="120" /></td>
                    <td>${data[i].busesName}</td>
                    <td>
                        <div class="spinner-border text-info" style="display:none" id="load${data[i].bid}"></div>
                        <button class="btn btn-danger" onclick="deleteBuses('${endpoint + "/" + data[i].bid}', ${data[i].bid}, this)">Xoa</button>
                    </td>
                </tr>
            `
            d.innerHTML = h;
        }

        let d2 = document.getElementById("mySpinner");
        d2.style.display = "none";
    }).catch(function (err) {
        console.error(err);
    });
}





function deleteRBuses(endpoint, id, btn) {
    let r = document.getElementById(`row${id}`);
    let load = document.getElementById(`load${id}`);
    load.style.display = "block";
    btn.style.display = "none";
    fetch(endpoint, {
        method: 'delete'
    }).then(function (res) {
        if (res.status !== 204)
            alert("Không thể xóa!!!");
        load.style.display = "none";
        r.style.display = "none";
    }).catch(function (err) {
        console.error(err);
        btn.style.display = "block";
        load.style.display = "none";
    });
}

function getRBuses(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let d = document.getElementById("myRouteBuses");
        if (d !== null) {
            let h = "";
            for (let i = 0; i < data.length; i++)
                h += `
                <tr id="row${data[i].rbid}">
                    <td>${data[i].rbid}</td>
                    <td>${data[i].busesId}</td>
                    <td>${data[i].ngaydi}</td>
                    <td>${data[i].giodi}</td>
                    <td>${data[i].price}</td>
                    <td>
                        <div class="spinner-border text-info" style="display:none" id="load${data[i].rbid}"></div>
                        <button class="btn btn-danger" onclick="deleteBuses('${endpoint + "/" + data[i].rbid}', ${data[i].rbid}, this)">Xoa</button>
                    </td>
                </tr>
            `
            d.innerHTML = h;
        }

        let d2 = document.getElementById("mySpinner");
        d2.style.display = "none";
    }).catch(function (err) {
        console.error(err);
    });
}
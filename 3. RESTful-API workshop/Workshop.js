import fetch from "node-fetch"
const url = "https://2022-nsmsa-phase-1-api.azurewebsites.net/api/message"

// GET
fetch(url).then((res) => res.json()).then((data) => console.log(data));

// POST
// fetch(url, {
//     method: "POST",
//     body: JSON.stringify({
//         "nickname": "Zeus",
//         "mainMessage": "Hey MSA-ers! Hopefully this message reaches you well and you're enjoying learning about all this cool tech!",
//         "password": "password"
//     }),
//     headers: {
//         "Content-type": "application/json; charset=UTF-8"
//     }
// }).then(res => res.json()).then(data => console.log(data));


// PUT
// const messageId = 1;
// fetch(`${url}/${messageId}`, {
//     method: "PATCH",
//     body: JSON.stringify({
//         "mainMessage": "Hey MSA-ers! Hopefully this message reaches you well and you're enjoying learning about all this cool tech! - edited via PUT",
//     }),
//     headers: {
//         "password": "password",
//     }
// }).then(res => res.json()).then(data => console.log(data));

// DELETE
// POST FIRST
// let deleteMessageId = 2;
// fetch(url, {
//     method: "POST",
//     body: JSON.stringify({
//         "nickname": "Zeus",
//         "mainMessage": "This message will self destruct.",
//         "password": "password"
//     }),
//     headers: {
//         "Content-type": "application/json; charset=UTF-8"
//     }
// }).then(res => res.json()).then(data => deleteMessageId = data["id"]);

// fetch(`${url}/${deleteMessageId}`, { method: "DELETE", headers: { "accept": "*/*" } }).then(res => res.json()).then(data => console.log(data));
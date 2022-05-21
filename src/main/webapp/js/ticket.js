/**
 *
 */
var rowsback = []
var colsback = []
var position = ""
var amount

//数组对象定义一个函数
Array.prototype.indexOf = function(val) {
    for (var i = 0; i < this.length; i++) {
        if (this[i] == val) return i;
    }
    return -1;
};
//得到这个元素的索引,数组自己固有的函数去删除这个元素
Array.prototype.remove = function(val) {
    var index = this.indexOf(val);
    if (index > -1) {
        this.splice(index, 1);
    }
};

function chooseTicket() {
    let seats = document.querySelectorAll(".seat-wrapper .seat");
    let ticketNum = 0;
    for (let seat of seats) {
        if (!hasClass(seat, "sold")) {
            seat.onclick = function () {
                let row = this.parentElement.getAttribute("data-row-id");
                let col = this.getAttribute("data-col-id");
                if (hasClass(this, "selected")) {
                    removeClass(this, "selected");
                    addOrRemoveTicket(-1, row, col);
                    insOrDesPrice(-1);
                    --ticketNum;
                } else {
                    if (ticketNum < 4) {
                        addClass(this, "selected");
                        addOrRemoveTicket(1, row, col);
                        insOrDesPrice(1);
                        ++ticketNum;
                    } else {
                        alert("每次只能买四张电影票！");
                    }
                }
            };
        }
    }
}

/**
 * 添加或移除已选择的电影票
 * @param op[type:Number] 1为添加；-1为移除
 * @param row 行号
 * @param col 列号
 */
function addOrRemoveTicket(op, row, col) {
    var ticketContainer = document.querySelector(".seat-selected .ticket-container");

    if (op === 1) {
        var span = document.createElement("span");
        span.setAttribute("class", "ticket");
        span.setAttribute("data-row-col", row + "-" + col);
        span.innerHTML = row + "排" + col + "座";
        ticketContainer.appendChild(span);
        rowsback.push(row)
        colsback.push(col)
    } else if (op === -1) {
        let selector = "span[" + "data-row-col='" + row + "-" + col + "']";
        let s = ticketContainer.querySelector(selector);
        ticketContainer.removeChild(s);
        rowsback.remove(row)
        colsback.remove(col)
    }
}

/**
 * 选票价格加减
 * @param op op[type:Number] 1为加；-1为减
 */
function insOrDesPrice(op) {
    let t_price = document.querySelector(".ticket-total-price .price");
    let p_price = document.querySelector(".info-item .ticket-price span").innerHTML;
    if (op === 1) {
        t_price.innerHTML = (parseInt(t_price.innerHTML.trim()) + parseInt(p_price.trim())).toString();
    } else if (op === -1) {
        t_price.innerHTML = (parseInt(t_price.innerHTML.trim()) - parseInt(p_price.trim())).toString();
    }
    amount = t_price.innerHTML
}

function purchase(userId,scheduleId){
    // console.log(rowsback);
    // console.log(colsback);

    for (i=0;i<rowsback.length;i++){
        position+=rowsback[i]+"排"+colsback[i]+"座;"
    }

    location.href='/generateOrder?rows='+rowsback+'&cols='+colsback+'&position='+position+'&amount='+amount+'&orderStatus='+1+'&userId='+userId+'&scheduleId='+scheduleId;

}
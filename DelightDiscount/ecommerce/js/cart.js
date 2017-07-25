function _a2c(id, qty, calc) {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: "WebServices/WebService.asmx/add2cart",
        data: "{'ajax_Id':'" + id + "', 'qty':'" + qty + "'}",
        success: function (res) {
            $('#cartholder').html(res.d);
            var val = (parseInt($('#cartqty' + id).text()) + parseInt(qty));
            if (val >= 0) {
                $('#cartqty' + id).text(val)
            }

            if (calc) {
                _ccp();
            }
        }
    });
}

function _delc(id) {
    var ret = confirm("Please confirm again for delete.");
    if (ret) {
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "WebServices/WebService.asmx/del2cart",
            data: "{'ajax_Id':'" + id + "'}",
            success: function (res) {
                $('#cartholder').html(res.d);
                $('#cartr' + id).remove();

                _ccp();
            }
        });
    }
}

function _ccp(drpship) {
    subt = 0;
    var table = document.getElementById('carttable');
    if (table) {
        for (var i = 0; i < table.rows.length; i += 1) {
            var dt = $(table.rows[i]).find('input').val();
            if (dt != undefined) {
                var qty = $('#cartqty' + dt).text();
                var prc = $('#cartprc' + dt).text();
                var tot = parseFloat(qty) * parseFloat(prc);
                subt += tot;
                $('#carttot' + dt).text(tot.toFixed(2));
            }
        }
        $('#subtotal').text(subt.toFixed(2));
        var vat = ((subt * parseFloat($('#vatper').val())) / 100);
        var ship = 0;
        if (drpship) {
            ship = parseFloat($(drpship).val());
            if (drpship.selectedIndex == 0) {
                $('#trOutlet').hide();
                $('#trDealer').hide();
            } else if (drpship.selectedIndex == 1) {
                $('#trOutlet').show();
                $('#trDealer').hide();
            } else {
                $('#trOutlet').hide();
                $('#trDealer').show();
            }
        }
        $('#shiptotal').text(ship.toFixed(2));
        $('#vattotal').text(vat.toFixed(2));
        $('#grdtotal').text((subt + vat + ship).toFixed(2));
    }
}
$(document).ready(function () {
    _ccp();

    $('#trOutlet').hide();
    $('#trDealer').hide();
});
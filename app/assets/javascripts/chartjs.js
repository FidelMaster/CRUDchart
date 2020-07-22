
Grafico_Barras();
Grafico_pastel();

function Grafico_pastel() {

    $.ajax({
        url: "http://localhost:3000/tradmarks.json",
        type: 'GET',
        success: function (res) {
            let label = [];
            let valor = [];
            for (let index = 0; index < res.length; index++) {
                label.push(res[index][1])
                valor.push(res[index][0])
            }


            var ctx = document.getElementById('g_pastel').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'polarArea',
                data: {
                    labels: label,
                    datasets: [{
                        label: '# of Votes',
                        data: valor,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

        }
    });



}

function Grafico_Barras() {

    $.ajax({
        url: "http://localhost:3000/products.json",
        type: 'GET',
        success: function (res) {
            let label = [];
            let valor = [];
            for (let index = 0; index < res.length; index++) {
                label.push(res[index][1])
                valor.push(res[index][0])
            }

            var ctx = document.getElementById('g_barra').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: label,
                    datasets: [{
                        label: '# DE PRODUCTOS POR PROVEEDOR',
                        data: valor,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

        }
    });



}
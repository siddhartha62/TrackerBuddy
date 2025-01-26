function initializeChart(data) {
    const ctx = document.getElementById('myChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: data.labels,
            datasets: [{
                label: 'Bar Chart Overview',
                data: data.values,
                backgroundColor: ['#ff6f00', '#555'], // Example colors
                borderWidth: 1,
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: false,
                },
            }
        }
    });
}

function initializePieChartData(data) {
    const ctx = document.getElementById('myPieChart').getContext('2d');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: data.labels,
            datasets: [{
                data: data.values,
                backgroundColor: ['#ff6f00', '#555'], // Example colors
                borderWidth: 1,
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
            }
        }
    });
}

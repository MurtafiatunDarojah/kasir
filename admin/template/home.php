<?php include 'koneksi.php'; ?>
<section id="main-content">
	<section class="wrapper">

		<div class="row">
			<div class="col-lg-9">
				<div class="row" style="margin-left:1pc;margin-right:1pc;">
					<h1>DASHBOARD</h1>
					<hr>
					<html>

					<head>
						<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
					</head>

					<body>
						<div class="col-lg-12">
							<div class="col-lg-6" style="width: 80%;">
								<canvas id="myChart1" style="width: 50%; float: left;"></canvas>
							</div>
							<div class="col-lg-6" style="width: 80%;">
								<canvas id="myChart2" style="width: 50%; float: left;"></canvas>
							</div>
							<script>
								<?php
								include 'koneksi.php';
								$query = $koneksi->query("SELECT * FROM barang");

								// Inisialisasi array untuk menyimpan data
								$labels = [];
								$data = [];

								if ($query->num_rows > 0) {
									while ($row = $query->fetch_assoc()) {
										$labels[] = $row['nama_barang'];
										$data[] = $row['stok'];
									}
								}
								?>
								var ctx1 = document.getElementById('myChart1').getContext('2d');
								var chart1 = new Chart(ctx1, {
									type: 'bar',
									data: {
										labels: <?= json_encode($labels); ?>,
										datasets: [{
											label: 'Data Barang',
											data: <?= json_encode($data); ?>,
											backgroundColor: 'rgba(255, 99, 132, 0.2)',
											borderColor: 'rgba(255, 99, 132, 1)',
											borderWidth: 1
										}]
									},
									options: {
										scales: {
											y: {
												beginAtZero: true
											}
										}
									}
								});
								<?php
								include 'koneksi.php';
								$query = $koneksi->query("SELECT * FROM penjualan");

								// Inisialisasi array untuk menyimpan data
								$labels = [];
								$data = [];

								if ($query->num_rows > 0) {
									while ($row = $query->fetch_assoc()) {
										$labels[] = $row['id_barang'];
										$data[] = $row['jumlah'];
									}
								}
								?>
								var ctx2 = document.getElementById('myChart2').getContext('2d');
								var chart2 = new Chart(ctx2, {
									type: 'bar',
									data: {
										labels: <?= json_encode($labels); ?>,
										datasets: [{
											label: 'Data penjualan',
											data: <?= json_encode($data); ?>,
											backgroundColor: 'rgba(54, 162, 235, 0.2)',
											borderColor: 'rgba(54, 162, 235, 1)',
											borderWidth: 1
										}]
									},
									options: {
										scales: {
											y: {
												beginAtZero: true
											}
										}
									}
								});
							</script>
						</div>
					</body>

					</html>


	</section>
</section>
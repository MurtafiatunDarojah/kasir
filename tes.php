<?php
// Pendapatan
$penjualan = 50000; // Contoh pendapatan dari penjualan produk atau jasa
$pendapatan_lainnya = 10000; // Contoh pendapatan dari sumber lainnya

// Biaya
$biaya_produksi = 25000; // Contoh biaya produksi
$biaya_gaji = 10000; // Contoh biaya gaji
$biaya_sewa = 5000; // Contoh biaya sewa

// Menghitung Laba Kotor
$laba_kotor = ($penjualan + $pendapatan_lainnya) - ($biaya_produksi + $biaya_gaji + $biaya_sewa);

// Biaya Lainnya
$biaya_pajak = 0; // Contoh biaya pajak
$biaya_bunga = 0; // Contoh biaya bunga

// Menghitung Laba Bersih
$laba_bersih = $laba_kotor - ($biaya_pajak + $biaya_bunga);

// Menampilkan Hasil
echo "Laporan Laba Rugi\n";
echo "-----------------\n";
echo "Pendapatan: " . ($penjualan + $pendapatan_lainnya) . "\n";
echo "Biaya Produksi: " . $biaya_produksi . "\n";
echo "Biaya Gaji: " . $biaya_gaji . "\n";
echo "Biaya Sewa: " . $biaya_sewa . "\n";
echo "-----------------\n";
echo "Laba Kotor: " . $laba_kotor . "\n";
echo "Biaya Pajak: " . $biaya_pajak . "\n";
echo "Biaya Bunga: " . $biaya_bunga . "\n";
echo "-----------------\n";
echo "Laba Bersih: " . $laba_bersih . "\n";

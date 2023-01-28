# Mini-Project-Data-Engineering-DSLS-2023
Project ini meliputi proses *Extract, Transform,* dan *Load* (ETL). Data-data yang semula berasal dari berbagai sumber ini kemudian diolah menjadi data tunggal konsisten sehingga mudah dalam melakukan analisis. Analisis yang dipilih terdiri dari tiga, yaitu:
1. **Employee Analysis**: Analisis hubungan employee dengan banyaknya order dilakukan untuk menentukan pegawai terbaik yang memberikan sumbangsih penjualan terbesar dan menentukan jabatan pegawai mana yang paling berkontribusi dalam penjualan.
2. **Customer Analysis (Recency, Frequency, and Monetary Analysis)** : Analisis *Recency, Frequency, Monetary* (RFM) merupakan proses analisis perilaku pelanggan. Dalam menentukan segmentasi pelanggan, digunakan model RFM berdasarkan tiga variabel yaitu recency terakhir melakukan transaksi, frequency dari transaksi, dan monetary dari jumlah transaksi setiap pelanggan. 

      a. **Recency** merupakan variabel untuk mengukur nilai pelanggan berdasarkan rentang waktu (tanggal, bulan, tahun) transaksi terakhir pelanggan sampai saat ini. Semakin kecil rentang waktu maka nilai recency semakin besar. 

      b. **Frequency** merupakan variabel untuk mengukur nilai pelanggan berdasarkan jumlah transaksi yang dilakukan pelanggan dalam satu periode. Semakin banyak jumlah transaksi yang dilakukan maka nilai frequency semakin besar. 

      c. **Monetary** merupakan variabel untuk mengukur nilai pelanggan berdasarkan jumlah besaran uang yang dikeluarkan pelanggan dalam satu periode. Semakin banyak jumlah besaran uang yang dikeluarkan pelanggan maka nilai Monetary semakin besar.
3. **Shipments Analysis**: Analisis shipper dilakukan untuk memberikan pelayanan kepada konsumen, keandalan yang diberikan oleh perusahaan yaitu berupa ketepatan waktu pengiriman. Untuk memenuhi keinginan pelanggan di bisnis logistik maka perlu dilakukan pemilihan vendor pengiriman terbaik untuk dapat memuaskan pelanggan. Analisis Keterlambatan Pengiriman pada perusahaan Northwind dilakukan dengan membandingkan frekuensi dan durasi keterlambatan yang dilakukan oleh vendor *United Package, Speedy Express,* dan *Federal Shipping*.

## Tools : Microsoft SQL Server
## Dataset : Northwind Database
## Deliverables: 
1. Query
2. Report (Power Point)

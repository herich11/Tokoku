-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `kd_barang` varchar(5) NOT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(15) NOT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nm_barang`, `stok`, `harga`) VALUES
('I-001', 'Laptop', 500, 4000000),
('I-002', 'Monitor', 200, 600000),
('I-003', 'Printer', 300, 750000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `nama`, `alamat`, `telp`, `email`, `website`, `owner`, `desc`) VALUES
(1, 'Herich Computer', 'Kediri', '085870250886', 'hericahyononew@gmail.com', 'http://herich_computer.com', 'Heri Cahyono', 'Supplier Laptop & Komputer Terpercaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_pegawai` (
  `kd_pegawai` varchar(5) NOT NULL DEFAULT '0',
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `level` enum('pegawai','admin') DEFAULT 'pegawai',
  PRIMARY KEY (`kd_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`kd_pegawai`, `username`, `password`, `nama`, `level`) VALUES
('E-001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Heri Cahyono', 'admin'),
('E-002', 'heri', 'd85e336d61f5344395c42126fac239bc', 'User Pegawai', 'pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelanggan` (
  `kd_pelanggan` varchar(5) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `nm_pelanggan`, `alamat`, `email`) VALUES
('C-001', 'Universitas Kahuripan', 'Pelem Kediri', 'info@kahuripan.ac.id'),
('C-002', 'Gedung Serbaguna', 'Pare Kediri', 'gedungserbaguna@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_penjualan_detail` (
  `kd_penjualan` varchar(5) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penjualan_detail`
--

INSERT INTO `tbl_penjualan_detail` (`kd_penjualan`, `kd_barang`, `qty`) VALUES
('S-001', 'I-001', 2),
('S-001', 'I-002', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan_header`
--

CREATE TABLE IF NOT EXISTS `tbl_penjualan_header` (
  `kd_penjualan` varchar(5) NOT NULL,
  `kd_pelanggan` varchar(10) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `kd_pegawai` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kd_penjualan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penjualan_header`
--

INSERT INTO `tbl_penjualan_header` (`kd_penjualan`, `kd_pelanggan`, `total_harga`, `tanggal_penjualan`, `kd_pegawai`) VALUES
('S-001', 'C-002', 9800000, '2020-01-20', 'E-001');
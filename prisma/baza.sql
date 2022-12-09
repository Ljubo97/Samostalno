 Database: `baza`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin ime` varchar(30) NOT NULL,
  `Admin sifra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin ime`, `Admin sifra`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `clanovi izvoda`
--

CREATE TABLE `clanovi izvoda` (
  `id` int(11) NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL,
  `Ime i Prezime` varchar(40) NOT NULL,
  `PD` int(11) NOT NULL,
  `Broj stana` int(10) NOT NULL,
  `Uplata` double(10,2) NOT NULL,
  `Broj izvoda` int(3) NOT NULL,
  `Datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clanovi izvoda`
--

INSERT INTO `clanovi izvoda` (`id`, `Ime Zgrade`, `Ime i Prezime`, `PD`, `Broj stana`, `Uplata`, `Broj izvoda`, `Datum`) VALUES
(72, 'SPC 40', 'Milan Milanovic', 3, 13, 0.00, 1, '2022-01-01'),
(74, 'Zgrada broj 1', 'Drugi stanar prve zgrade', 5, 5, 9.80, 7, '2022-10-28'),
(75, 'Zgrada broj 1', 'Drugi stanar prve zgrade', 5, 5, 29.50, 8, '2022-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `izvodi`
--

CREATE TABLE `izvodi` (
  `id` int(11) NOT NULL,
  `Broj izvoda` int(3) NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL,
  `Datum izvoda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `izvodi`
--

INSERT INTO `izvodi` (`id`, `Broj izvoda`, `Ime Zgrade`, `Datum izvoda`) VALUES
(16, 1, 'SPC 40', '2022-01-01'),
(17, 2, 'SPC 40', '2022-01-02'),
(18, 5, 'SPC 40', '2022-02-01'),
(19, 1, 'SPC 86', '2022-01-01'),
(20, 3, 'SPC 40', '2022-01-03'),
(21, 6, 'SPC 40', '2022-02-02'),
(23, 1, 'Ustanova', '2022-01-01'),
(25, 5, 'Peta', '2022-06-15'),
(26, 1, 'Zgrada Broj 6', '2022-05-18'),
(27, 7, 'Zgrada broj 1', '2022-10-28'),
(28, 8, 'Zgrada broj 1', '2022-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `ostale uplate`
--

CREATE TABLE `ostale uplate` (
  `Razlog uplate` text NOT NULL,
  `Iznos uplate` double NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ostale uplate`
--

INSERT INTO `ostale uplate` (`Razlog uplate`, `Iznos uplate`, `Ime Zgrade`) VALUES
('Za wc', 123, 'SPC 40');

-- --------------------------------------------------------

--
-- Table structure for table `rashodi`
--

CREATE TABLE `rashodi` (
  `id` int(11) NOT NULL,
  `Razlog` text NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL,
  `Datum rashoda` date NOT NULL,
  `Januar` double(10,2) DEFAULT 0.00,
  `Februar` double(10,2) DEFAULT 0.00,
  `Mart` double(10,2) DEFAULT 0.00,
  `April` double(10,2) DEFAULT 0.00,
  `Maj` double(10,2) DEFAULT 0.00,
  `Jun` double(10,2) DEFAULT 0.00,
  `Jul` double(10,2) DEFAULT 0.00,
  `Avgust` double(10,2) DEFAULT 0.00,
  `Septembar` double(10,2) DEFAULT 0.00,
  `Oktobar` double(10,2) DEFAULT 0.00,
  `Novembar` double(10,2) DEFAULT 0.00,
  `Decembar` double(10,2) DEFAULT 0.00,
  `Trenutni rashodi` double(10,2) NOT NULL DEFAULT 0.00,
  `Promjena` double(10,2) NOT NULL,
  `Izvod` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rashodi`
--

INSERT INTO `rashodi` (`id`, `Razlog`, `Ime Zgrade`, `Datum rashoda`, `Januar`, `Februar`, `Mart`, `April`, `Maj`, `Jun`, `Jul`, `Avgust`, `Septembar`, `Oktobar`, `Novembar`, `Decembar`, `Trenutni rashodi`, `Promjena`, `Izvod`) VALUES
(27, 'DOMAR', 'SPC 40', '2022-02-01', 0.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, -2.00, 1),
(29, 'Lim', 'SPC 40', '2022-01-01', 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, -2.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stanari`
--

CREATE TABLE `stanari` (
  `id` int(10) NOT NULL,
  `Ime i Prezime` varchar(40) NOT NULL,
  `PD` int(11) NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL,
  `Broj sprata` int(10) NOT NULL,
  `Broj stana` int(10) NOT NULL,
  `Kvadratura Stana` int(10) NOT NULL,
  `Prostor` text NOT NULL,
  `Cijena po kvadratu` double(10,3) NOT NULL,
  `Mjesecni Racun` double(10,2) DEFAULT NULL,
  `Januar` double(10,2) DEFAULT 0.00,
  `Februar` double(10,2) DEFAULT 0.00,
  `Mart` double(10,2) DEFAULT 0.00,
  `April` double(10,2) DEFAULT 0.00,
  `Maj` double(10,2) DEFAULT 0.00,
  `Jun` double(10,2) DEFAULT 0.00,
  `Jul` double(10,2) DEFAULT 0.00,
  `Avgust` double(10,2) DEFAULT 0.00,
  `Septembar` double(10,2) DEFAULT 0.00,
  `Oktobar` double(10,2) DEFAULT 0.00,
  `Novembar` double(10,2) DEFAULT 0.00,
  `Decembar` double(10,2) DEFAULT 0.00,
  `Dug` double(10,2) NOT NULL DEFAULT 0.00,
  `Proslomjesecni Dug` double(10,2) NOT NULL DEFAULT 0.00,
  `Proslogodisnji dug` double(10,2) NOT NULL DEFAULT 0.00,
  `Sifra` varchar(20) DEFAULT NULL,
  `ukupno` double(20,2) NOT NULL,
  `Komentar` text NOT NULL,
  `Vandredno unesen` varchar(11) NOT NULL,
  `Pocetni dug` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stanari`
--

INSERT INTO `stanari` (`id`, `Ime i Prezime`, `PD`, `Ime Zgrade`, `Broj sprata`, `Broj stana`, `Kvadratura Stana`, `Prostor`, `Cijena po kvadratu`, `Mjesecni Racun`, `Januar`, `Februar`, `Mart`, `April`, `Maj`, `Jun`, `Jul`, `Avgust`, `Septembar`, `Oktobar`, `Novembar`, `Decembar`, `Dug`, `Proslomjesecni Dug`, `Proslogodisnji dug`, `Sifra`, `ukupno`, `Komentar`, `Vandredno unesen`, `Pocetni dug`) VALUES
(132, 'Milan Milanovic', 3, 'SPC 40', 15, 13, 29, 'stambeni', 0.200, 5.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -20.00, 0.00, 0.00, '3Milan Milanovic399', 0.00, '', '0', 0),
(133, 'Stanar prve zgrade', 2, 'Zgrada broj 1', 1, 1, 25, 'stambeni', 0.200, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50.00, 0.00, 0.00, '2Stanar prve zgrade2', 0.00, 'OVO JE KOMENT', '', 0),
(134, 'Drugi stanar prve zgrade', 5, 'Zgrada broj 1', -2, 5, 21, 'stambeni', 0.200, 4.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.80, 0.00, 0.00, -8.30, 0.00, 0.00, '5Drugi stanar prve z', 9.80, 'NOvi koment', '11', 1.5),
(135, 'Ovo je pravi', 9, 'Zgrada broj 1', 12, 6, 23, 'stambeni', 0.200, 4.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '9Ovo je pravi1197', 0.00, 'Ovo je kom', '2022-11-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zgrade`
--

CREATE TABLE `zgrade` (
  `id` int(10) NOT NULL,
  `Ime Zgrade` varchar(30) NOT NULL,
  `Ziro Racun` text NOT NULL,
  `PIB` text NOT NULL,
  `Balans` double(10,2) NOT NULL,
  `Uplate` double(10,2) NOT NULL,
  `Rashodi` double(10,2) NOT NULL,
  `Pocetno stanje` double(10,2) NOT NULL,
  `Ostale uplate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zgrade`
--

INSERT INTO `zgrade` (`id`, `Ime Zgrade`, `Ziro Racun`, `PIB`, `Balans`, `Uplate`, `Rashodi`, `Pocetno stanje`, `Ostale uplate`) VALUES
(14, 'Peta', '44545-123213', '123123', 4.10, 0.00, 0.00, 4.10, 0),
(1, 'SPC 40', '22-23353-222', '3332221114', 93.00, 0.00, 30.00, 0.00, 123),
(2, 'SPC 86', '520-7852-333', '9993336662', 0.00, 0.00, 0.00, 0.00, 0),
(12, 'Ustanova', '124-5564564-2', '5674854', 0.00, 0.00, 0.00, 0.00, 0),
(16, 'Zgrada broj 1', '123-123123-436', '14234234', 9.80, 9.80, 0.00, 0.00, 0),
(15, 'Zgrada Broj 6', '231-213123-12', '112312312', 15.20, 0.00, 0.00, 15.20, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanovi izvoda`
--
ALTER TABLE `clanovi izvoda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Broj izvoda` (`Broj izvoda`),
  ADD KEY `Ime Zgrade` (`Ime Zgrade`),
  ADD KEY `Datum` (`Datum`),
  ADD KEY `clanovi izvoda_ibfk_6` (`Ime i Prezime`),
  ADD KEY `PD` (`PD`);

--
-- Indexes for table `izvodi`
--
ALTER TABLE `izvodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Ime Zgrade` (`Ime Zgrade`),
  ADD KEY `Broj izvoda` (`Broj izvoda`),
  ADD KEY `Datum izvoda` (`Datum izvoda`);

--
-- Indexes for table `rashodi`
--
ALTER TABLE `rashodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stanari`
--
ALTER TABLE `stanari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Sifra` (`Sifra`),
  ADD KEY `id` (`id`),
  ADD KEY `Ime Zgrade` (`Ime Zgrade`),
  ADD KEY `Ime i Prezime` (`Ime i Prezime`) USING BTREE,
  ADD KEY `PD` (`PD`);

--
-- Indexes for table `zgrade`
--
ALTER TABLE `zgrade`
  ADD PRIMARY KEY (`Ime Zgrade`),
  ADD UNIQUE KEY `PIB` (`PIB`) USING HASH,
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanovi izvoda`
--
ALTER TABLE `clanovi izvoda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `izvodi`
--
ALTER TABLE `izvodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rashodi`
--
ALTER TABLE `rashodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stanari`
--
ALTER TABLE `stanari`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `zgrade`
--
ALTER TABLE `zgrade`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clanovi izvoda`
--
ALTER TABLE `clanovi izvoda`
  ADD CONSTRAINT `clanovi izvoda_ibfk_3` FOREIGN KEY (`Broj izvoda`) REFERENCES `izvodi` (`Broj izvoda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clanovi izvoda_ibfk_5` FOREIGN KEY (`Ime Zgrade`) REFERENCES `zgrade` (`Ime Zgrade`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clanovi izvoda_ibfk_6` FOREIGN KEY (`Ime i Prezime`) REFERENCES `stanari` (`Ime i Prezime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clanovi izvoda_ibfk_7` FOREIGN KEY (`PD`) REFERENCES `stanari` (`PD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `izvodi`
--
ALTER TABLE `izvodi`
  ADD CONSTRAINT `izvodi_ibfk_1` FOREIGN KEY (`Ime Zgrade`) REFERENCES `zgrade` (`Ime Zgrade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stanari`
--
ALTER TABLE `stanari`
  ADD CONSTRAINT `stanari_ibfk_1` FOREIGN KEY (`Ime Zgrade`) REFERENCES `zgrade` (`Ime Zgrade`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

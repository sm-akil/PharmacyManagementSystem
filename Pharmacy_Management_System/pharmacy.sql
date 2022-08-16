--
-- Database: ***pharmacy***
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE admin_credentials (
  USERNAME varchar(50) COLLATE utf16_bin NOT NULL,
  PASSWORD varchar(50) COLLATE utf16_bin NOT NULL
 )ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
 
 
INSERT INTO admin_credentials(USERNAME, PASSWORD) VALUES
('admin', 'admin123');

--
-- Table structure for table of *customers*
--

CREATE TABLE customers (
  ID int(11) NOT NULL,
  NAME varchar(20) COLLATE utf16_bin NOT NULL,
  CONTACT_NUMBER varchar(10) COLLATE utf16_bin NOT NULL,
  ADDRESS varchar(100) COLLATE utf16_bin NOT NULL,
  DOCTOR_NAME varchar(20) COLLATE utf16_bin NOT NULL,
  DOCTOR_ADDRESS varchar(100) COLLATE utf16_bin NOT NULL
  )ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
  



--
-- Dumping data for table of *customers*
--

INSERT INTO customers (ID, NAME, CONTACT_NUMBER, ADDRESS, DOCTOR_NAME, DOCTOR_ADDRESS) VALUES

);



--
-- Table structure for table of *invoices*
--

CREATE TABLE invoices (
  INVOICE_ID int(11) NOT NULL,
  NET_TOTAL double NOT NULL DEFAULT 0,
  INVOICE_DATE date NOT NULL DEFAULT current_timestamp(),
  USTOMER_ID int(11) NOT NULL,
  TOTAL_AMOUNT double NOT NULL,
  TOTAL_DISCOUNT double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table of *invoices*
--

INSERT INTO invoices (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 30, '2021-10-19', 14, 30, 0),
(2, 2626, '2021-10-19', 6, 2626, 0);


--
-- Table structure for table `medicines`
--

CREATE TABLE medicines (
  ID int(11) NOT NULL,
  NAME varchar(100) COLLATE utf16_bin NOT NULL,
  PACKING varchar(20) COLLATE utf16_bin NOT NULL,
  GENERIC_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table *medicines*
--

INSERT INTO medicines (ID, NAME, PACKING, GENERIC_NAME, SUPPLIER_NAME) VALUES
(1, 'Nicip Plus', '10tab', 'Paracetamole', 'BDPL PHARMA'),
(2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma'),
(4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA'),
(5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma');


--
-- Table structure for table of *medicines_stock*
--

CREATE TABLE medicines_stock (
  ID int(11) NOT NULL,
  NAME varchar(100) COLLATE utf16_bin NOT NULL,
  BATCH_ID varchar(20) COLLATE utf16_bin NOT NULL,
  EXPIRY_DATE varchar(10) COLLATE utf16_bin NOT NULL,
  QUANTITY int(11) NOT NULL,
  MRP double NOT NULL,
  RATE double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table of *medicines_stock*
--

INSERT INTO medicines_stock (ID, NAME, BATCH_ID, EXPIRY_DATE, QUANTITY, MRP, RATE) VALUES
(1, 'Crosin', 'CROS12', '12/34', 2, 2626, 26),
(2, 'Gelusil', 'G327', '12/42', 0, 15, 12),
(3, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 24),
(4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28);



--
-- Table structure for table of *purchases*
--

CREATE TABLE purchases (
  SUPPLIER_NAME varchar(100) COLLATE utf16_bin NOT NULL,
  INVOICE_NUMBER int(11) NOT NULL,
  VOUCHER_NUMBER int(11) NOT NULL,
  PURCHASE_DATE varchar(10) COLLATE utf16_bin NOT NULL,
  TOTAL_AMOUNT double NOT NULL,
  PAYMENT_STATUS varchar(20) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;


--
-- Table structure for table of *suppliers*
--

CREATE TABLE suppliers (
  ID int(11) NOT NULL,
  NAME varchar(100) COLLATE utf16_bin NOT NULL,
  EMAIL varchar(100) COLLATE utf16_bin NOT NULL,
  CONTACT_NUMBER varchar(10) COLLATE utf16_bin NOT NULL,
  ADDRESS varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table of *suppliers*
--


INSERT INTO suppliers (ID, NAME, EMAIL, CONTACT_NUMBER, ADDRESS) VALUES
);

--
--###Indexes for dumped tables###
--


--
-- Indexes for table **admin_credentials**
--

ALTER TABLE admin_credentials
  ADD PRIMARY KEY (USERNAME);

--
-- Indexes for table customers
--

ALTER TABLE customers
  ADD PRIMARY KEY (ID);

--
-- Indexes for table invoices
--

ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table *medicines*
--

ALTER TABLE medicines
  ADD PRIMARY KEY (ID);

--
-- Indexes for table **medicines_stock**
--

ALTER TABLE medicines_stock
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table **purchases**
--

ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `suppliers`
--

ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- ###AUTO_INCREMENT for dumped tables###
--

--
-- AUTO_INCREMENT for table `customers`
--

ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoices`
--

ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--

ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines_stock`
--

ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--

ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--

ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

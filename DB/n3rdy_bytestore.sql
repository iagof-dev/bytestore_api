-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2023 at 09:14 PM
-- Server version: 8.0.34-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n3rdy_bytestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int NOT NULL,
  `name_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `icon` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Computadores', NULL),
(2, 'Componentes', NULL),
(3, 'Perifericos', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_login`
--

CREATE TABLE `history_login` (
  `id` int NOT NULL,
  `account` int NOT NULL,
  `ip` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `payment_id` bigint NOT NULL,
  `payment_method` varchar(64) DEFAULT NULL,
  `value` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `costumer_id` int NOT NULL,
  `costumer_id_cpf` bigint DEFAULT NULL,
  `costumer_bank` varchar(255) DEFAULT NULL,
  `costumer_email` varchar(255) NOT NULL,
  `seller_id` int NOT NULL,
  `payment_ip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `product_id`, `payment_id`, `payment_method`, `value`, `status`, `payment_date`, `costumer_id`, `costumer_id_cpf`, `costumer_bank`, `costumer_email`, `seller_id`, `payment_ip`) VALUES
(1, 261, 57491491094, 'pix', 1, 'approved', '2023-04-29 11:03:35', 1, 51890190802, 'Nu Pagamentos S.A.', 'junindopao86@gmail.com', 3, '190.112.153.131'),
(2, 261, 57437168375, 'pix', 1, 'approved', '2023-04-29 11:12:14', 1, 51890190802, 'Nu Pagamentos S.A.', 'junindopao86@gmail.com', 3, '190.112.153.131');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` longtext NOT NULL,
  `price` double NOT NULL,
  `have_discount` tinyint(1) DEFAULT '0',
  `discount` float DEFAULT '0',
  `image` varchar(120) NOT NULL,
  `id_category` tinyint NOT NULL,
  `owner` int NOT NULL,
  `created` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `title`, `description`, `price`, `have_discount`, `discount`, `image`, `id_category`, `owner`, `created`) VALUES
(1, 1, 'ACER Notebook Nitro 5 AN515-57-520Y, CI5 11400H, 8GB, 512GB SDD, (NVIDIA RTX 3050), Windows11. 15,6” LED FHD IPS, preto', 'Notebook Acer Aspire Nitro 5 AN515-57-520Y Intel Core i5 11400H 15,6\" 8GB SSD 512 GB Windows 11 GeForce RTX 3050 atualmente é R$ 4.297,50.\n\nO Notebook Acer Aspire Nitro 5 AN515-57-520Y Intel Core i5 11400H 15,6\" 8GB SSD 512 GB Windows 11 GeForce RTX 3050 da Acer vem com o sistema operacional Windows 11. Com 36.3cm de largura, 25.5cm de profundidade e 2.4cm de altura, o Aspire Nitro 5 pesa 2.3kg. O AN515-57-520Y, da Acer, possui tela de resolução Full HD e 15.6\". Este notebook da Acer possui um processador Intel Core i5 11400H de 11ª Geração e uma memória RAM de 8.0GB. Em armazenamento, o Acer AN515-57-520Y utiliza um SSD de 512.0GB. A placa de vídeo GeForce RTX 3050 é a responsável por renderizar gráficos de games e programas de edição, por ser uma placa Dedicada (Off-Board). O notebook Acer tem conexão sem fio por Bluetooth, Wi-Fi (2.4 GHz e 5.0 GHz) para internet e para acessórios wireless. Além disso, ele tem entradas Ethernet (RJ-45), HDMI, USB 3.2, USB-C, Áudio.', 4100, 0, 0, 'product_6523493981944.jpg', 1, 1, '2023-10-08 21:28:41'),
(6, 1, 'PLACA DE VIDEO MSI GEFORCE RTX 4090 GAMING TRIO 24G GDDR6X - 912-V510-014', 'A NVIDIA GeForce RTX 4090 é a GPU GeForce definitiva. Ele traz um enorme salto em desempenho, eficiência e gráficos com inteligência artificial. Experimente jogos de altíssima performance, mundos virtuais incrivelmente detalhados com ray tracing, produtividade sem precedentes e novas maneiras de criar. É alimentado pela arquitetura NVIDIA Ada Lovelace e vem com 24 GB de memória G6X para oferecer a melhor experiência para jogadores e criadores.', 14900, 0, 0, 'product_65341164a3818.jpg', 2, 1, '2023-10-21 14:59:00'),
(7, 1, 'Mouse Gamer Redragon Cobra, Chroma RGB, 12400DPI, 7 Botões', 'Características:\r\n- Marca: Redragon\r\n- Modelo: M711 V2\r\n\r\nO Mouse Gamer Redragon Cobra, possui sensor PIXART 3327 para Alta Performance (20 G / 100 IPS) e seu sistema é de Iluminação RGB Redragon Chroma Mk.II (7 Diferentes Modos de Iluminação). Possui Polling Rate de 1000hz (Tempo de Resposta Ajustável via Software de 1/2/4/8ms), com 8 Botões Programáveis e 2 Botões laterais para funções / atalhos, macros, etc. Tudo isso com 130 gramas, leve e preciso para aquela jogada especial.\r\n\r\n\r\nEspecificações:\r\n- Sensor PIXART 3327 para Alta Performance (12400DPI/20G/100ips) (óptico)\r\n- Iluminação RGB Ajustável: Sistema de Iluminação Chroma RGB! (7 Diferentes Modos de Iluminação)\r\n- Polling Rate de 1000hz (Tempo de Resposta Ajustável via Software de 1/2/4/8ms)\r\n- 7 Botões Programáveis\r\n- Comprimento: 1.8 metros\r\n- Cabo de fibra trançada\r\n- 2 Botões Laterais para funções / atalhos, macros e etc\r\n- Compatível com Software para Configuração de Macro / Ajuste Iluminação RGB / Configurações de Performance\r\n- Memória Interna para Salvamento de Configurações\r\n- Base com Pés de Teflon para Deslize Suave\r\n\r\n- 5 Perfis de Configurações para Troca Rápida de Configurações de um Game para Outro\r\n- Pegada Ergonômica confortável perfeita para Destros\r\n- Cabo Trançado para maior Resistência\r\n ', 100, 0, 0, 'product_65341231583f0.jpg', 3, 1, '2023-10-21 15:02:25'),
(8, 1, 'Headset Gamer Redragon Zeus X, Chroma Mk.II, RGB, Surround 7.1, USB, Drivers 53MM, Preto/Vermelho - H510-RGB', 'Headset Gamer Redragon Zeus X, USB, RGB Chroma Mk.II, Surround 7.1, Drivers 53mm, Preto/Vermelho\r\n \r\nRecursos:\r\n• Iluminação RGB Redragon Chroma Mk.II com 4 efeitos.\r\n\r\n• Almofadas e revestimento interno do arco em tecido para proporcionar o máximo de conforto.\r\n\r\n• Som estéreo e Surround 7.1 Virtual de alta qualidade pelos drivers de 53mm.\r\n\r\n• Microfone com redução de ruído de fundo para captação clara e limpa.\r\n\r\n• Controladora integrada para maior praticidade durante o uso.\r\n\r\n• Compatível com software para ajustes e configurações personalizadas como equalização e controle de volume independente.', 270, 0, 0, 'product_653412a036075.jpg', 3, 1, '2023-10-21 15:04:16'),
(9, 1, 'Placa de Vídeo RX 6750 XT MECH 2X 12G V1 Radeon, 12GB GDDR6', 'Características:\r\n- Marca: MSI\r\n- Modelo: Radeon RX 6750 XT\r\nEspecificações:\r\n- Arquitetura: AMD RDNA 2\r\n- Processador gráfico: AMD Radeon RX 6750 XT\r\n- Memória: 12 GB GDDR6\r\n- Barramento de Memória: 192 bits\r\n- Conectores de Alimentação: 8 pinos x 2\r\n- Fonte de Alimentação Recomendada: 650 W ou superior\r\n- Dimensões do Cartão: 249 x 132 x 52 mm\r\n- Clock base: 2250 MHz\r\n- Clock boost: 2495 MHz\r\n- Núcleos stream: 2560\r\n- Unidades de computação: 160\r\n- Interface de memória: PCIe 4.0 x16\r\n- Largura de banda de memória: 448 GB/s\r\n- Saídas de vídeo: 2x DisplayPort 1.4a, 2x HDMI 2.1\r\n- Consumo de energia: 250W\r\n- Exibições Máximas: 4\r\n- Resolução Máxima: 7680 x 4320\r\n- FreeSync: Sim\r\nConteúdo da Embalagem:\r\n- Placa de Vídeo\r\nGarantia:\r\n12 meses de garantia\r\nPeso:\r\n1772 gramas (bruto com embalagem)', 2200, 0, 0, 'product_6534130f61245.jpg', 1, 1, '2023-10-21 15:06:07'),
(10, 1, 'SSD 1 TB Kingston NV2, M.2 2280', 'Características:\r\n\r\n- Marca: Kingston\r\n\r\n- Modelo: NV2S/1000G\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Fator de forma: M.2 2280\r\n\r\n- Interface: PCIe 4.0 x4 NVMe\r\n\r\n- Capacidades: 1TB\r\n\r\n\r\n\r\nLeitura/Gravação Sequencial:\r\n\r\n- 3.500/2.100 MB/s\r\n\r\n \r\n\r\nResistência (Total de Bytes Gravados):\r\n\r\n- 320TB\r\n\r\n \r\n\r\nConsumo de energia:\r\n\r\n- 1,4 W Inativo / 2,8 W Médio / 2,1 W (MAX) Leitura / 4,6 W (MAX) Gravação\r\n\r\n \r\n\r\nOperacional:\r\n\r\n- Temperatura de armazenamento: -40°C~85°C\r\n\r\n- Temperatura de operação: 0°C~70°C\r\n\r\n- Dimensões: 22mm x 80mm x 2,2mm\r\n\r\n- Peso: 7g (todas as capacidades)\r\n\r\n- Vibração Operacional: 2,17 G (7-800 Hz)\r\n\r\n- Vibração Não operacional: 20G (20-1000Hz)\r\n\r\n- MTBF: 1.500.000 horas\r\n\r\n \r\n\r\nConteúdo da Embalagem:\r\n\r\n- SSD Kingston NV2 1 TB\r\n\r\n\r\nGarantia:\r\n36 meses de garantia\r\n\r\nPeso:\r\n49 gramas (bruto com embalagem)', 300, 0, 0, 'product_6534134f27b13.jpg', 2, 1, '2023-10-21 15:07:11'),
(11, 1, 'Fonte Gamemax, 600W, 80 Plus White, PFC Ativo, Bivolt', 'Características:\r\n\r\n- Marca: Gamemax\r\n\r\n- Modelo: GS600\r\n\r\n- Cor: Preto\r\n\r\n\r\n\r\nGeral:\r\n\r\n- Potência: 600W\r\n\r\n- Versão: ATX 12V 2.3\r\n\r\n- Chave Liga/Desliga\r\n\r\n- Voltagem com seleção automatica (auto range): 100~240V\r\n\r\n- Frequência: 50~60Hz\r\n\r\n- Corrente de entrada: 8~4A\r\n\r\n- Corrente de saída: 3.3V-18A, 5V-18A, +12V-42A, -12V-0.5A, +5VSB-2.5A\r\n\r\n- Baixo ruído acústico: <20dBA\r\n\r\n- Refrigeração: Ventoinha 120 mm\r\n\r\n- MTBF: 100.000 horas (25º C)\r\n\r\n- Eficiencia: 80%\r\n\r\n- Cabos com capa de proteção\r\n\r\n- Comprimento dos cabos: 50cm\r\n\r\n- Dimensoes: 150mm (L) 85mm (A) 140mm (P)\r\n\r\n- Proteção interna contra curto circuito: OVP/ SCP/ OPP/ UVP/ OCP\r\n\r\n- Filtro de entrada AC\r\n\r\n- PFC: Ativo\r\n\r\n\r\n\r\nConectores:\r\n\r\n- 1x ATX Placa-Mãe 24 PINOS\r\n\r\n- 3x SATA\r\n\r\n- 2x Molex (4 pinos)\r\n\r\n- 1x EPS 12V 4+4 PINOS (CPU)\r\n\r\n- 1x PCI-E 8 PINOS(6+2)\r\n\r\n\r\n\r\nCertificações: \r\n\r\n- IEC 61000 (CE/EMC)\r\n\r\n- IEC 60950 (CE/LVD)\r\n\r\n- 80 Plus White\r\n\r\n\r\n\r\nConteúdo da Embalagem:\r\n\r\n- Fonte GS600\r\n\r\n- Cabo de energia\r\n\r\n \r\n\r\n**ACOMPANHA CABO DE FORÇA**\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n1590 gramas (bruto com embalagem)', 250, 0, 0, 'product_653413a601ed2.jpg', 2, 1, '2023-10-21 15:08:38'),
(12, 1, 'Fonte MSI MAG A650BN, ATX, 650W, 80 PLUS Bronze, PFC Ativo, Entrada Bivolt, Preto - 306-7ZP2B22-CE0', 'Características:\r\n\r\n- Marca: MSI\r\n\r\n- Modelo: 306-7ZP2B22-CE0\r\n\r\n- Cor: Preto\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n \r\n\r\nFator de Forma:\r\n\r\n-  ATX\r\n\r\n \r\n\r\nPotência Nominal:\r\n\r\n- 650W\r\n\r\n \r\n\r\nClassificação de Eficiência:\r\n\r\n- 80 Plus Bronze (até 85%)\r\n\r\n\r\n\r\nTamanho da Ventoinha:\r\n\r\n- 120 mm\r\n\r\n \r\n\r\nRolamento da Ventoinha:\r\n\r\n- Mancal de Manga\r\n\r\n \r\n\r\nDimensões (PXLXA):\r\n\r\n- 140 x 150 x 86mm \r\n\r\n \r\n\r\nTipo de PFC:\r\n\r\n- PFC Ativo\r\n\r\n \r\n\r\nFaixa de Tensão:\r\n\r\n- Bivolt 100-240 VCA\r\n\r\n \r\n\r\nFaixa de Frequência de Entrada:\r\n\r\n- 50~60Hz\r\n\r\n \r\n\r\nProteção:\r\n\r\n- OCP / OVP / OPP / OTP / SCP\r\n\r\n \r\n\r\nATX (Pinos):\r\n\r\n- 1\r\n\r\n \r\n\r\nEPS (8 Pinos):\r\n\r\n- 1\r\n\r\n \r\n\r\nPCI-E (6+2 Pinos):\r\n\r\n- 2 \r\n\r\n \r\n\r\nSATA (15 Pinos):\r\n\r\n- 5\r\n\r\n \r\n\r\nMolex (4 Pinos):\r\n\r\n- 2\r\n\r\n\r\n\r\nFDD (4 Pinos):\r\n\r\n- 1\r\n\r\n \r\n\r\nConteúdo da Embalagem:\r\n\r\n- Fonte MSI MAG A650BN\r\n\r\n- Acompanha Cabo de Força\r\n\r\n\r\nGarantia:\r\n60 meses de garantia\r\n\r\nPeso:\r\n2060 gramas (bruto com embalagem)', 350, 0, 0, 'product_653413e29de9c.jpg', 2, 1, '2023-10-21 15:09:38'),
(13, 1, 'SSD 480 GB Kingston A400, SATA', 'Características:\r\n\r\n- Marca: Kingston\r\n\r\n- Modelo: SA400S37/480G\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Formato: 2,5 pol \r\n\r\n- Interface: SATA Rev. 3.0 (6Gb/s) — compatível com a versão anterior SATA Rev. 2.0 (3Gb/s)\r\n\r\n- Capacidades: 480GB\r\n\r\n- NAND: TLC \r\n\r\n- Performance de referência - até 500MB/s para leitura e 450MB/s para gravação\r\n\r\n- Temperatura de armazenamento: -40 °C a 85 °C \r\n\r\n- Temperatura de operação: 0 °C a 70 °C\r\n\r\n- Vibração quando em operação: 2,17G pico (7 – 800 Hz)\r\n\r\n- Vibração quando não está em operação: 20G pico (10 – 2000 Hz)\r\n\r\n- Expectativa de vida útil: 1 milhão de horas MTB\r\n\r\n \r\n\r\nBenefícios: \r\n\r\n- 10x mais rápido do que um disco rígido: Com incríveis velocidades de leitura/gravação, o SSD A400 não somente irá aumentar o desempenho, como também poderá ser usado para dar vida nova em computadores mais antigos. \r\n\r\n- Robusto: O A400 é resistente a impactos e vibrações, para confiabilidade reforçada em notebooks e outros dispositivos móveis. \r\n\r\n- Ideal para desktops e notebooks: A400 tem um formato de 7 mm parase ajustar auma grande variedade de computadores. É ideal para notebooks mais finos e computadores, ultrabooks e ultratop com espaço limitado.\r\n\r\n\r\n\r\nConteúdo da embalagem:\r\n\r\n- SSD Kingston\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n54 gramas (bruto com embalagem)', 200, 0, 0, 'product_6534149f15556.jpg', 2, 1, '2023-10-21 15:12:47'),
(14, 1, 'Air Cooler Rise Mode Gamer G800, 180mm', 'Características:\r\n\r\n- Marca: Rise Mode\r\n\r\n- Modelo: RM-AC-O8-RGB\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n\r\n\r\nGeral:\r\n\r\n- TDP:130W                                            \r\n\r\n- Intel: 775/1150/1151/1155/1156/1366\r\n\r\n- AMD: AM4/AM2/AM2+/AM3/AM3+/FM1/FM2   \r\n\r\n- Heat Pipe: 6                           \r\n\r\n \r\n\r\nFan:\r\n\r\n- Tamanho: 2x 90 x 90 x 25 mm \r\n\r\n- Velocidade:800-2100 RPM \r\n\r\n- Ruído: 18dB(A) \r\n\r\n- Fluxo de ar: 55 CFM (MAX)\r\n\r\n- Tipo de rolamento: Rolamento hidráulico \r\n\r\n \r\n\r\nIluminação:\r\n\r\n- Cor do Led: RGB Rainbow\r\n\r\n \r\n\r\nEnergia:\r\n\r\n- Conector: 4pin PWM\r\n\r\n- Tensão: 12v \r\n\r\n \r\n\r\nVida útil do fan: \r\n\r\n- 30000 Horas\r\n\r\n \r\n\r\nConteúdo da embalagem:\r\n\r\n- 1x Air Cooler Rise Mode Gamer G800\r\n\r\n- Guia de instrução\r\n\r\n- Pasta Térmica\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n650 gramas (bruto com embalagem)', 89.5, 0, 0, 'product_653414c568fe1.jpg', 2, 1, '2023-10-21 15:13:25'),
(15, 1, 'Gabinete Gamer Rise Mode Galaxy Glass', 'Características:\r\n\r\n- Marca: Rise Mode\r\n\r\n- Modelo: RM-GA-GG-FB\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Cor: Preto\r\n\r\n- Dimensões (L x W x H): L 440mm x W 280mm x H 427mm\r\n\r\n- Fans: Suporte para 10 fans (fans não inclusos) \r\n\r\n* Produto não acompanha fans, imagem ilustrativa\r\n\r\n- Baias: 3.5” HDD (x2) | 2.5” SSD (x2)\r\n\r\n- Slots de Expansão: 7\r\n\r\n- Placa-Mãe: ATX / M-ATX / ITX\r\n\r\n- Fontes de Alimentação: ATX (não inclusa)\r\n\r\n \r\n\r\nConectividade:\r\n\r\n- Frontal I/O: x2 USB 2.0 | x1 USB 3.0\r\n\r\n- HD Áudio Entrada e Saída\r\n\r\n\r\n\r\nInformações adicionais:\r\n\r\n- Lateral Vidro Temperado\r\n\r\n- Frontal em Vidro Temperado\r\n\r\n- Suporte a Placa de Vídeo até 400MM\r\n\r\n- Suporte Air cooler até 160mm\r\n\r\n\r\n\r\nConteúdo da Embalagem:\r\n\r\n- Gabinete Gamer Rise Mode Galaxy Glass\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n8959 gramas (bruto com embalagem)', 480, 0, 0, 'product_653911591e882.jpg', 3, 1, '2023-10-25 10:00:09'),
(16, 1, 'Teclado Mecânico Razer Huntsman Mini Analog, RGB,', 'Características:\r\n\r\n- Marca: Razer\r\n\r\n- Modelo: RZ03-04340200-R3U1\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Sensação da tecla: Keycaps doubleshot em PBT Razer\r\n\r\n- Conectividade: Com fio - Cabo USB-C de fibra trançada destacável\r\n\r\n- Tamanho Aproximado: Formato compacto de 60%\r\n\r\n- Descanso: Não\r\n\r\n- Teclas de Mídia: Nenhum\r\n\r\n- Memória Integrada: Armazenamento híbrido integrado | Até 5 perfis de atalhos de teclas\r\n\r\nPASSTHROUGH\r\n\r\n- Tipo de Switch: Switch óptico analógico Razer\r\n\r\n- Iluminação: Teclas com retroiluminação individual Razer Chroma RGB, oferecendo 16,8 milhões de opções personalizáveis de cor\r\n\r\n- Fileira de teclas inferiores com layout padrão\r\n\r\n- Estrutura em alumínio\r\n\r\n- Predefinições de iluminação integradas\r\n\r\n- Habilitado para Razer Synapse 3\r\n\r\n- Teclas totalmente programáveis com gravação instantânea de macros\r\n\r\n- Sobreposição de até N teclas com anti-ghosting incorporado\r\n\r\n- Opção de Modo de Jogo\r\n\r\n- Ultrapolling de 1000 Hz\r\n\r\n\r\nGarantia:\r\n1 meses de garantia\r\n\r\nPeso:\r\n700 gramas (bruto com embalagem)', 1000, 0, 0, 'product_653911919e319.jpg', 3, 1, '2023-10-25 10:01:05'),
(17, 1, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'Características:\r\n\r\n- Marca: HyperX\r\n\r\n- Modelo: 4P5E1AA#ABA\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Iluminação RGB dinâmica por tecla\r\n\r\n- Estrutura durável em alumínio\r\n\r\n- Descanso para pulso removível\r\n\r\n- Switches mecânicos confiáveis à prova de poeira[2]\r\n\r\n- Conector USB em metal dourado com cabo trançado resistente\r\n\r\n\r\n- Personalização avançada com o software HyperX NGENUITY\r\n\r\n\r\nConteúdo da Embalagem:\r\n- Teclado HyperX Alloy MKW100\r\n\r\n\r\nGarantia:\r\n24 meses de garantia\r\n\r\nPeso:\r\n1250 gramas (bruto com embalagem)', 240, 0, 0, 'product_653925af0d6ef.jpg', 3, 1, '2023-10-25 11:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int NOT NULL,
  `category` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category`, `name`, `icon`) VALUES
(1, 1, 'Uso Pessoal', 'fa-solid fa-laptop'),
(2, 1, 'Gamer', 'fa-sharp fa-solid fa-gamepad'),
(3, 1, 'Workstation', 'fa-solid fa-briefcase'),
(4, 1, 'Servidor', 'fa-solid fa-server'),
(5, 2, 'Gabinete', 'fa-duotone fa-desktop'),
(6, 2, 'Placa de Video (VGA)', 'fa-sharp fa-solid fa-gamepad'),
(7, 2, 'Processador', 'fa-solid fa-microchip'),
(8, 2, 'Memoria Ram', 'fa-solid fa-memory'),
(9, 2, 'Placa Mãe', 'fa-duotone fa-desktop'),
(10, 2, 'Armazenamento', 'fa-solid fa-database'),
(11, 2, 'Cooler Box', 'fa-solid fa-fan'),
(12, 2, 'Air Cooler', 'fa-solid fa-fan'),
(13, 2, 'Water Cooler', 'fa-sharp fa-solid fa-droplet'),
(14, 3, 'KIT Gamer', 'fa-solid fa-cube'),
(15, 3, 'Teclado Gamer', 'fa-solid fa-keyboard'),
(16, 3, 'Mouse Gamer', 'fa-solid fa-computer-mouse'),
(17, 3, 'Monitor', 'fa-solid fa-desktop'),
(18, 3, 'Headset Gamer', 'fa-solid fa-headset'),
(19, 3, 'Ventilador Gamer', 'fa-solid fa-fan'),
(20, 3, 'Caixa de Som', 'fa-solid fa-volume-high'),
(21, 3, 'Mesa Digitalizadora', 'fa-solid fa-pen'),
(22, 3, 'Impressora', 'fa-solid fa-print'),
(23, 3, 'Pendrive', 'fa-solid fa-screwdriver');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` varchar(16) DEFAULT 'user',
  `verified` tinyint(1) DEFAULT '0',
  `pfp` varchar(255) DEFAULT NULL,
  `description` longtext,
  `access_ip` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `register_ip` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `pass`, `role`, `verified`, `pfp`, `description`, `access_ip`, `last_access`, `register_ip`) VALUES
(1, 'Administrador', 'admin@admin.com', '', 'admin', 1, NULL, 'Bem-vindo à nossa loja de computadores e periféricos! Somos um destino único para todos os seus produtos e acessórios de tecnologia. Desde computadores desktop e laptops até impressoras, monitores, periféricos e muito mais, temos tudo o que você precisa para atender às suas necessidades tecnológicas.', '190.112.153.134', '2023-10-28 19:39:42', '190.112.153.73'),
(2, 'user', 'user@gmail.com', '', 'user', 0, NULL, NULL, '189.1.153.116', '2023-10-22 11:56:22', '190.112.153.73'),
(3, 'João games', 'joao@gmail.com', '', 'user', 0, 'user_653ec4a347628.webp', 'fff', '189.1.153.162', '2023-10-29 17:42:33', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_login`
--
ALTER TABLE `history_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_login`
--
ALTER TABLE `history_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

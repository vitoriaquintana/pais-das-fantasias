-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Out-2019 às 21:57
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitoria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Princesas'),
(2, 'Príncipe'),
(3, 'Personagens'),
(4, 'Natal'),
(5, 'Bailarina'),
(6, 'Animais'),
(7, 'Vestidos'),
(8, 'Profissões'),
(9, 'Super Herois');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `nome` varchar(500) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(50) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(500) COLLATE utf8_bin NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `observacao` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `id_user`, `status`, `observacao`) VALUES
(1, 3, 1, ' '),
(2, 3, 1, 'Testead ad adw wad wd a adasd ad wd awd wd ad awd awd awd wad wd wad wad w dwad wad wa dwa d dwa d wad wad wad wad wad wad wad wad awd wdad awd wa'),
(3, 3, 1, 'Fsdfsfsfsdf erw ee ewf e fewf ef s'),
(4, 4, 1, 'Quero o boi na cor roxa.'),
(5, 4, 1, 'Roxa'),
(6, 4, 1, 'Roxa . https://localhost/vitoria/codigo/confirma.php'),
(7, 4, 1, 'ksndlkas'),
(8, 4, 1, 'sjkdfdsk'),
(9, 5, 1, 'lalallalal'),
(10, 5, 1, 'lalallalal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `preco`, `imagem`, `descricao`, `titulo`, `id_categoria`, `quantidade`) VALUES
(1, '150', 'aliceMaravilhas.jpg', 'Fantasia da Alice no Pais das Maravilhas, feita com cetim azul claro, organza cristal branca e renda. Acompanha tiara com top de cetim preto.', 'Alice no Pais das Maravilhas', 3, 5),
(2, '100', 'anjoDourado.jpg', 'Fantasia de Anjo com detalhes dourado.Feito com collant branco, organza cristal branco, fita branca e dourada.', 'Anjo Dourado', 4, 5),
(3, '100', 'boi.jpg', 'Fantasia de boi. Feita com cetim marrom claro e escuro, com sino e rabo.', 'Boi', 6, 5),
(4, '100', 'anjoPrata.jpg', 'Fantasia de anjo com detalhes prata. Feito com collant branco, organza cristal branco, fita branca e prata.', 'Anjo Dourado', 4, 5),
(5, '250', 'auroraFrente.jpg', 'Fantasia da princesa Aurora (Bela Adormecida). Feita com cetim rosa e branco, renda bordada e malha branca. Acompanha tiara de princesa.', 'Aurora', 1, 5),
(6, '75', 'bailarina.jpg', 'Fantasia de Bailarina. Feita com collant rosa claro,pedras aplicadas e tutu rosa. Acompanha tiara.', 'Bailarina', 5, 5),
(7, '170', 'bailarina2.jpg \r\n', 'Vestido de Princesa. Feita com oxford rosa claro com estampa florida e organza cristal claro.', 'Vestido Menina', 7, 5),
(8, '250', 'barbiePortalSecreto.jpg', 'Fantasia da Barbie Portal Secreto. Feito com oxford rosa escuro, oxford florido ,organza cristal rosa e aplicação de flores. Acompanha tiara.', 'Barbie Portal Secreto', 3, 5),
(9, '100', 'bonecoNeve.jpg', 'Fantasia boneco de neve. Feita com cetim branco e listrado com vermelho, botões pretos. Acompanha cartola.', 'Boneco de Neve', 4, 5),
(10, '250', 'brancaNeve2.jpg', 'Fantasia da Branca de Neve. Feita com cetim amarelo ouro, vermelho escuro, azul marinho e organza rendado com aplicações de borboletas e pedraria na parte superior do vestido. Acompanha tiara.\r\n*VESTIDO COM SOBREPOSIÇÃO DE SAIA* ', 'Branca de Neve', 1, 5),
(11, '100', 'burro.jpg', 'Fantasia de burro. Feita com cetim cinza escuro e claro. ', 'Burro', 6, 5),
(12, '250', 'chapeuzinhoVermelhoSemCapa.jpg', 'Fantasia da chapeuzinho vermelho. Feito com collant branco com aplicações de flores; oxford vermelho e branco; rendas. Acompanha capa. ', 'Chapeuzinho Vermelho', 3, 5),
(13, '250', 'cinderela.jpg', 'Fantasia da Cinderela. Feita com cetim azul claro, organza cristal azul claro; aplicações de pedras e flores na parte superior. ', 'Cinderela', 1, 5),
(14, '150', 'cozinheiro.jpg', 'Fantasia de cozinheiro. Feito com oxford branco e botões preto. Acompanha chapéu.', 'Cozinheiro', 8, 5),
(15, '170', 'mulherMaravilha.jpg', 'Fantasia da Mulher Maravilha. Feita com cetim vermelho, azul com estampa estrelada e aplicações em dourado. Acompanha capa. ', 'Mulher Maravilha', 9, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_pedido`
--

CREATE TABLE `produto_pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `tamanho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produto_pedido`
--

INSERT INTO `produto_pedido` (`id`, `id_pedido`, `id_produto`, `quantidade`, `tamanho`) VALUES
(1, 1, 3, 1, 1),
(2, 2, 3, 2, 1),
(3, 2, 6, 5, 1),
(4, 3, 3, 3, 2),
(5, 3, 2, 1, 1),
(6, 4, 3, 1, 1),
(7, 5, 1, 1, 1),
(8, 6, 2, 1, 1),
(9, 7, 1, 1, 1),
(10, 8, 1, 3, 5),
(11, 9, 10, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `email`, `senha`, `nome`, `telefone`, `endereco`) VALUES
(2, 'admin', 'asdasd@gmail.com', '$2y$10$FhbcLmjrwIF.nInykGMGQOQX2SNXmReACVIJyy2w6/NF7y0yMwypy', '', '', ''),
(5, 'vit', 'vithh.quintana@gmail.com', '$2y$10$Ld955HLPzgQlIbIskjobS.B3wL7Ls4mfzqHIlXYIB/Ou8Lz8/akuu', 'VitÃ³ria Machado Quintana', '51985363720', 'Rua Domingos Martins');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto_pedido`
--
ALTER TABLE `produto_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `produto_pedido`
--
ALTER TABLE `produto_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

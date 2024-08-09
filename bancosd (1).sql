-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/07/2024 às 02:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancosd`
--
CREATE DATABASE IF NOT EXISTS `bancosd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bancosd`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(4, 'Calças'),
(6, 'Camisetas'),
(8, 'Tênis');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `nome_cliente` varchar(60) DEFAULT NULL,
  `adm` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `email`, `senha`, `nome_cliente`, `adm`) VALUES
(2, 'vinicius2@email.com', 'line.2015', 'Michek', 1),
(4, 'vinicius5@email.com', '12345674', 'Teste', 1),
(5, 'testteste@email.com', 'ggggdfdsefsesf', 'teste2', 1),
(6, 'testeteste1@email.com', 'hfgdfgdufgdyfd', 'teste3', 1),
(7, 'testeuser@email', '123456789', 'line', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `id_categoria_id` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  `nome_produto` varchar(60) DEFAULT NULL,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `id_categoria_id`, `valor`, `descricao`, `nome_produto`, `disponibilidade`, `foto`) VALUES
(6, 4, 11, 'testecalça', 'calçateste', 1, 'Calça-Social-feminina.jpg'),
(7, 4, 22, 'teste', 'tenis 2', 1, 'tenis-branco.jpeg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `id_cliente_id` int(11) DEFAULT NULL,
  `pagamento` varchar(40) DEFAULT NULL,
  `entrega` varchar(120) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `venda`
--

INSERT INTO `venda` (`id_venda`, `id_cliente_id`, `pagamento`, `entrega`, `data`, `status`) VALUES
(4, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(5, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(6, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(7, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(8, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(9, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(10, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(11, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(12, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(13, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(14, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(15, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(16, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(17, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(18, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente'),
(19, 7, 'picpay', 'nseiiii', '2024-07-08', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_produto`
--

CREATE TABLE `venda_produto` (
  `id_venda_produto` int(11) NOT NULL,
  `id_produto_id` int(11) DEFAULT NULL,
  `id_venda_id` int(11) DEFAULT NULL,
  `valor_unit` decimal(10,2) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `venda_produto`
--

INSERT INTO `venda_produto` (`id_venda_produto`, `id_produto_id`, `id_venda_id`, `valor_unit`, `quantidade`) VALUES
(1, 7, 19, 22.00, 43),
(2, 6, 19, 11.00, 45);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria_id` (`id_categoria_id`);

--
-- Índices de tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_cliente_id` (`id_cliente_id`);

--
-- Índices de tabela `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD PRIMARY KEY (`id_venda_produto`),
  ADD KEY `id_produto_id` (`id_produto_id`),
  ADD KEY `id_venda_id` (`id_venda_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `venda_produto`
--
ALTER TABLE `venda_produto`
  MODIFY `id_venda_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria_id`) REFERENCES `categoria` (`id_categoria`);

--
-- Restrições para tabelas `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_cliente_id`) REFERENCES `cliente` (`id_cliente`);

--
-- Restrições para tabelas `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD CONSTRAINT `venda_produto_ibfk_1` FOREIGN KEY (`id_produto_id`) REFERENCES `produto` (`id_produto`),
  ADD CONSTRAINT `venda_produto_ibfk_2` FOREIGN KEY (`id_venda_id`) REFERENCES `venda` (`id_venda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

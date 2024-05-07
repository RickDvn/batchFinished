-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2024 a las 12:55:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stockdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution`
--

CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution`
--

INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 2, 1, '2024-05-07 10:43:48.000000', '2024-05-07 10:43:48.000000', '2024-05-07 10:43:49.000000', 'FAILED', 'FAILED', 'org.springframework.jdbc.BadSqlGrammarException: PreparedStatementCallback; bad SQL grammar [INSERT INTO STOCK (lugar, id, stock, stockReal, stockVirtual) VALUES (?, ?, ?, ?, ?);]\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:112)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2024-05-07 10:43:49.000000'),
(2, 2, 1, '2024-05-07 10:44:47.000000', '2024-05-07 10:44:47.000000', '2024-05-07 10:44:48.000000', 'FAILED', 'FAILED', 'org.springframework.dao.DuplicateKeyException: PreparedStatementCallback; SQL [INSERT INTO STOCK (lugar, id, stock, stock_real, stock_virtual) VALUES (?, ?, ?, ?, ?);]; Duplicate entry \'11111\' for key \'PRIMARY\'\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batc', '2024-05-07 10:44:48.000000'),
(3, 2, 1, '2024-05-07 10:46:22.000000', '2024-05-07 10:46:22.000000', '2024-05-07 10:46:22.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-07 10:46:22.000000'),
(4, 2, 1, '2024-05-07 11:47:55.000000', '2024-05-07 11:47:55.000000', '2024-05-07 11:47:55.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 11:47:55.000000'),
(5, 2, 1, '2024-05-07 11:49:24.000000', '2024-05-07 11:49:24.000000', '2024-05-07 11:49:24.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 11:49:24.000000'),
(6, 2, 1, '2024-05-07 11:49:42.000000', '2024-05-07 11:49:42.000000', '2024-05-07 11:49:42.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 11:49:42.000000'),
(7, 2, 1, '2024-05-07 11:57:06.000000', '2024-05-07 11:57:06.000000', '2024-05-07 11:57:06.000000', 'FAILED', 'FAILED', 'org.springframework.dao.DuplicateKeyException: PreparedStatementCallback; SQL [INSERT INTO STOCK (lugar, id, stock, stock_real, stock_virtual) VALUES (?, ?, ?, ?, ?);]; Duplicate entry \'22222\' for key \'PRIMARY\'\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batc', '2024-05-07 11:57:06.000000'),
(8, 2, 1, '2024-05-07 11:59:27.000000', '2024-05-07 11:59:27.000000', '2024-05-07 11:59:27.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-07 11:59:27.000000'),
(9, 2, 1, '2024-05-07 12:02:37.000000', '2024-05-07 12:02:37.000000', '2024-05-07 12:02:37.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 12:02:37.000000'),
(10, 2, 1, '2024-05-07 12:03:08.000000', '2024-05-07 12:03:08.000000', '2024-05-07 12:03:09.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 12:03:09.000000'),
(11, 2, 1, '2024-05-07 12:04:57.000000', '2024-05-07 12:04:57.000000', '2024-05-07 12:04:57.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 12:04:57.000000'),
(12, 2, 1, '2024-05-07 12:06:06.000000', '2024-05-07 12:06:06.000000', '2024-05-07 12:06:06.000000', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2024-05-07 12:06:06.000000'),
(13, 2, 1, '2024-05-07 12:07:26.000000', '2024-05-07 12:07:27.000000', '2024-05-07 12:07:27.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-07 12:07:27.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_context`
--

CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution_context`
--

INSERT INTO `batch_job_execution_context` (`JOB_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(8, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(9, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(10, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(11, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(12, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(13, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_params`
--

CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `PARAMETER_NAME` varchar(100) NOT NULL,
  `PARAMETER_TYPE` varchar(100) NOT NULL,
  `PARAMETER_VALUE` varchar(2500) DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_seq`
--

CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution_seq`
--

INSERT INTO `batch_job_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(13, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_instance`
--

CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_instance`
--

INSERT INTO `batch_job_instance` (`JOB_INSTANCE_ID`, `VERSION`, `JOB_NAME`, `JOB_KEY`) VALUES
(1, 0, 'importUserJob', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_seq`
--

CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_seq`
--

INSERT INTO `batch_job_seq` (`ID`, `UNIQUE_KEY`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution`
--

CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution`
--

INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 2, 'step1', 1, '2024-05-07 10:43:48.000000', '2024-05-07 10:43:48.000000', '2024-05-07 10:43:49.000000', 'FAILED', 0, 3, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.jdbc.BadSqlGrammarException: PreparedStatementCallback; bad SQL grammar [INSERT INTO STOCK (lugar, id, stock, stockReal, stockVirtual) VALUES (?, ?, ?, ?, ?);]\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:112)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2024-05-07 10:43:49.000000'),
(2, 2, 'step1', 2, '2024-05-07 10:44:47.000000', '2024-05-07 10:44:47.000000', '2024-05-07 10:44:48.000000', 'FAILED', 0, 3, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.dao.DuplicateKeyException: PreparedStatementCallback; SQL [INSERT INTO STOCK (lugar, id, stock, stock_real, stock_virtual) VALUES (?, ?, ?, ?, ?);]; Duplicate entry \'11111\' for key \'PRIMARY\'\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batc', '2024-05-07 10:44:48.000000'),
(3, 6, 'step1', 3, '2024-05-07 10:46:22.000000', '2024-05-07 10:46:22.000000', '2024-05-07 10:46:22.000000', 'COMPLETED', 4, 10, 5, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-07 10:46:22.000000'),
(4, 2, 'step2', 7, '2024-05-07 11:57:06.000000', '2024-05-07 11:57:06.000000', '2024-05-07 11:57:06.000000', 'FAILED', 0, 3, 1, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.dao.DuplicateKeyException: PreparedStatementCallback; SQL [INSERT INTO STOCK (lugar, id, stock, stock_real, stock_virtual) VALUES (?, ?, ?, ?, ?);]; Duplicate entry \'22222\' for key \'PRIMARY\'\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1548)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:677)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:701)\r\n	at org.springframework.jdbc.core.JdbcTemplate.batchUpdate(JdbcTemplate.java:1047)\r\n	at org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.batchUpdate(NamedParameterJdbcTemplate.java:377)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:187)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:203)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:170)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:297)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:227)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batc', '2024-05-07 11:57:06.000000'),
(5, 6, 'step2', 8, '2024-05-07 11:59:27.000000', '2024-05-07 11:59:27.000000', '2024-05-07 11:59:27.000000', 'COMPLETED', 4, 10, 5, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-07 11:59:27.000000'),
(6, 6, 'step1', 13, '2024-05-07 12:07:27.000000', '2024-05-07 12:07:27.000000', '2024-05-07 12:07:27.000000', 'COMPLETED', 4, 10, 5, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-07 12:07:27.000000'),
(7, 6, 'step2', 13, '2024-05-07 12:07:27.000000', '2024-05-07 12:07:27.000000', '2024-05-07 12:07:27.000000', 'COMPLETED', 4, 10, 5, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-07 12:07:27.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_context`
--

CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution_context`
--

INSERT INTO `batch_step_execution_context` (`STEP_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAAHQAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAAHQAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAC3QAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAAHQAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAC3QAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAC3QAIHByb2R1Y3RvSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAABzdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAacHJvZHVjdG9JdGVtV3JpdGVyLndyaXR0ZW5zcQB+AAcAAAAAAAAABXQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAac3RvY2tJdGVtUmVhZGVyLnJlYWQuY291bnRzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAC3QAEWJhdGNoLnRhc2tsZXRUeXBldAA9b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAuaXRlbS5DaHVua09yaWVudGVkVGFza2xldHQADWJhdGNoLnZlcnNpb250AAU1LjEuMXQADmJhdGNoLnN0ZXBUeXBldAA3b3JnLnNwcmluZ2ZyYW1ld29yay5iYXRjaC5jb3JlLnN0ZXAudGFza2xldC5UYXNrbGV0U3RlcHg=', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_seq`
--

CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution_seq`
--

INSERT INTO `batch_step_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(7, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `ID` bigint(20) NOT NULL,
  `LUGAR` varchar(20) DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `STOCK_REAL` int(11) DEFAULT NULL,
  `STOCK_VIRTUAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`ID`, `LUGAR`, `STOCK`, `STOCK_REAL`, `STOCK_VIRTUAL`) VALUES
(11111, 'PENINSULA', 5, 5, 0),
(22222, 'PENINSULA', 5, 5, 0),
(33333, 'PENINSULA', 5, 5, 0),
(44444, 'PENINSULA', 5, 5, 0),
(55555, 'PENINSULA', 1, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`),
  ADD KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`);

--
-- Indices de la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_seq`
--
ALTER TABLE `batch_job_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_job_instance`
--
ALTER TABLE `batch_job_instance`
  ADD PRIMARY KEY (`JOB_INSTANCE_ID`),
  ADD UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`);

--
-- Indices de la tabla `batch_job_seq`
--
ALTER TABLE `batch_job_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`),
  ADD KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_seq`
--
ALTER TABLE `batch_step_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`);

--
-- Filtros para la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

package com.viewnext.batchdb.config;


import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.FlatFileItemWriter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;

import com.viewnext.batchdb.listener.JobCompletionNotificationListener;
import com.viewnext.batchdb.processor.StockItemProcessor;
import com.viewnext.batchdb.model.StockBo;

/**
 * La configuracion del Batch
 */
@Configuration
public class BatchConfig {

	@Bean
	public Job importUserJob (JobRepository jobRepository, Step step1, Step step2, JobCompletionNotificationListener listener) {
		return new JobBuilder("importUserJob", jobRepository)
				.listener(listener)
				.start(step1)
				//.next(step2)
				.build();
	}
	
	/**
	 * Escribir en un csv en local
	 * 
	 * @param jobRepository
	 * @param transactionManager
	 * @param reader
	 * @param processor
	 * @param writer
	 * @return
	 */
	@Bean
	public Step step1(JobRepository jobRepository, PlatformTransactionManager transactionManager, @Qualifier("stockReaderLocal") FlatFileItemReader<StockBo> reader,
			StockItemProcessor processor, @Qualifier("writerLocal") FlatFileItemWriter<StockBo> writer) {
		return new StepBuilder("step1", jobRepository)
				.<StockBo, StockBo> chunk(3, transactionManager)
				.allowStartIfComplete(true)
				.reader(reader)
				.processor(processor)
				.writer(writer)
				.build();
	}
	
	/**
	 * Escribir en la base de datos
	 * 
	 * @param jobRepository
	 * @param transactionManager
	 * @param reader
	 * @param processor
	 * @param writer
	 * @return
	 */
	@Bean
	public Step step2(JobRepository jobRepository, PlatformTransactionManager transactionManager, @Qualifier("stockReaderLocal") FlatFileItemReader<StockBo> reader,
			StockItemProcessor processor, @Qualifier("writerDB") JdbcBatchItemWriter<StockBo> writer) {
		return new StepBuilder("step2", jobRepository)
				.<StockBo, StockBo> chunk(3, transactionManager)
				.allowStartIfComplete(true)
				.reader(reader)
				.processor(processor)
				.writer(writer)
				.build();
	}
	
}

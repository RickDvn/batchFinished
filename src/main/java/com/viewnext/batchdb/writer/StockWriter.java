package com.viewnext.batchdb.writer;

import javax.sql.DataSource;

import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemWriter;
import org.springframework.batch.item.file.builder.FlatFileItemWriterBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.PathResource;
import org.springframework.stereotype.Component;

import com.viewnext.batchdb.model.Stock;

/**
 * Clase que guarda los distintos writers para este batch
 */
@Component
public class StockWriter {
	
	/**
	 * El writer para escribir en la base de datos
	 * 
	 * @param dataSource para conectarse a la base de datos
	 * @return El writer que escribirá en la base de datos
	 */
	@Bean(value = "writerDB")
	public JdbcBatchItemWriter<Stock> writerDB(DataSource dataSource) 
	{ 
		return new JdbcBatchItemWriterBuilder<Stock>() 
				.itemSqlParameterSourceProvider( 
						new BeanPropertyItemSqlParameterSourceProvider<>())
				.sql("INSERT INTO STOCK (lugar, id, stock, stock_real, stock_virtual) VALUES (:lugar, :id, :stock, :stockReal, :stockVirtual);")
				.dataSource(dataSource) 
				.build(); 
	}
	
	/**
	 * El writer para escribir en el csv
	 * 
	 * @return El writer que escribirá en el csv
	 */
	@Bean(value = "writerLocal")
	public FlatFileItemWriter<Stock> writerLocal() {
		return new FlatFileItemWriterBuilder<Stock>().name("productoItemWriter")
				.resource(new PathResource("src/main/resources/data/local/stockTerminales.csv")).delimited()
				.names("lugar", "id", "stock", "stockReal", "stockVirtual")
				.build();
	}
}

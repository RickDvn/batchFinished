package com.viewnext.batchdb.processor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Clase que maneja los distintos processors del Batch
 */
@Configuration
public class StockProcessor {

	/**
	 * Devuelve el procesador que descarta los Stock no peninsulares
	 * 
	 * @return StockItemProcessor
	 */
	@Bean
	public StockItemProcessor processor() {
		return new StockItemProcessor();
	}
	
}

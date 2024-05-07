package com.viewnext.batchdb.reader;

import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.batch.item.file.mapping.DefaultLineMapper;
import org.springframework.batch.item.file.transform.DelimitedLineTokenizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;

import com.viewnext.batchdb.model.StockBo;

/**
 * Clase que maneja los distintos reader del Batch
 */
@Component
@Configuration
public class StockReader {
	
	/**
	 * Lee el archivo .dat en local
	 * 
	 * @return FlatFileItemReader<Stock> el archivo leido y listo para procesar
	 */
	@Bean("stockReaderLocal")
	public FlatFileItemReader<StockBo> reader() {

		// El separador de las columnas
		DelimitedLineTokenizer tokenizer = new DelimitedLineTokenizer();
		tokenizer.setDelimiter(";");
		tokenizer.setStrict(false); // Para que no tenga en cuenta las columnas extra
		tokenizer.setNames("lugar", "id", "stock", "stockReal", "stockVirtual");

		DefaultLineMapper<StockBo> lineMapper = new DefaultLineMapper<>();
		lineMapper.setLineTokenizer(tokenizer);

		// Inicializacion del mapper que a sonarlint le gusta
		BeanWrapperFieldSetMapper<StockBo> mapper = new BeanWrapperFieldSetMapper<>();
		
		mapper.setTargetType(StockBo.class);
		
		return new FlatFileItemReaderBuilder<StockBo>().name("stockItemReader").linesToSkip(1).strict(true) // Saltar la cabecera
				.resource(new FileSystemResource("src/main/resources/data/local/stockTerminales.dat")).lineTokenizer(tokenizer)
				.fieldSetMapper(mapper).build();
	}
	
}

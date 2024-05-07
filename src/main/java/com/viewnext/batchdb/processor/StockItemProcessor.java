package com.viewnext.batchdb.processor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.ItemProcessor;

import com.viewnext.batchdb.model.StockBo;

/**
 * Procesador que descarta los Stock que no son de la peninsula
 */
public class StockItemProcessor implements ItemProcessor<StockBo, StockBo> {

	private static final Logger log = LoggerFactory.getLogger(StockItemProcessor.class);

	/**
	 * El procesador que descarta los Stock que no cumplen con las condiciones que
	 * se quieren
	 * 
	 * @return El objeto Stock que cumple las especificaciones o, si no las cumple,
	 *         null
	 */
	@Override
	public StockBo process(final StockBo stock) {
		log.info(String.format("Processing: ", stock));

		if (stock.getLugar().equalsIgnoreCase("peninsula")) {
			return stock;
		} else {
			return null;
		}

	}

}

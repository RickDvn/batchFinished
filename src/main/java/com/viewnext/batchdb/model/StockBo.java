package com.viewnext.batchdb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Modelo Stock
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockBo {
	
	private String lugar;
	private Long id;
	private int stock;
	private int stockReal;
	private int stockVirtual;
}

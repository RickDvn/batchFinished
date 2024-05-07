package com.viewnext.batchdb.writer;

import java.io.IOException;
import java.io.Writer;

import org.springframework.batch.item.file.FlatFileHeaderCallback;

public class StockHeaderWriter implements FlatFileHeaderCallback {

	private final String header;

	StockHeaderWriter(String header) {
        this.header = header;
    }

	@Override
    public void writeHeader(Writer writer) throws IOException {
        writer.write(header);
    }
}
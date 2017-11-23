/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.challenge3;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author James
 */
public class Read {

    private static final String FILE_PATH = "files/SalesData.xlsx";

    public static void main(String[] args) {
        List salesList = readExcel();

        System.out.println(salesList);
    }

    private static List readExcel() {
        List salesList = new ArrayList();
        FileInputStream fis = null;
        DataFormatter formatter = new DataFormatter();

        try {
            fis = new FileInputStream(FILE_PATH);

            Workbook workbook = new XSSFWorkbook(fis);
            int numSheets = workbook.getNumberOfSheets();

            for (int i = 0; i < numSheets; i++) {
                Sheet sheet = workbook.getSheetAt(i);
                Iterator rowIterator = sheet.iterator();
                
                while (rowIterator.hasNext()) {
                    Sale sale = new Sale();
                    Row row = (Row) rowIterator.next();
// skip the header                    
                    if (row.getRowNum() == 0) {
                        continue;
                    }
                    
                    Iterator cellIterator = row.cellIterator();

                    while (cellIterator.hasNext()) {
                        Cell cell = (Cell) cellIterator.next();
                        
                            if (cell.getColumnIndex() == 0) {
                                if (Cell.CELL_TYPE_STRING == cell.getCellType()) {
                                    sale.setBranch(cell.getStringCellValue());
                                }
                                else if (Cell.CELL_TYPE_NUMERIC == cell.getCellType()) {
                                    sale.setBranch(String.valueOf(cell.getNumericCellValue()));
                                }
                            } 
                            if (cell.getColumnIndex() == 1) {
                                if (Cell.CELL_TYPE_STRING == cell.getCellType()) {
                                    sale.setLoanNumber(cell.getStringCellValue());
                                }
                                else if (Cell.CELL_TYPE_NUMERIC == cell.getCellType()) {
                                    sale.setLoanNumber(String.valueOf(cell.getNumericCellValue()));
                                }
                            } 
                            if (cell.getColumnIndex() == 2) {
                                if (Cell.CELL_TYPE_STRING == cell.getCellType()) {
                                    sale.setLoanAmount(cell.getStringCellValue());
                                }
                                else if (Cell.CELL_TYPE_NUMERIC == cell.getCellType()) {
                                    sale.setLoanAmount(String.valueOf(cell.getNumericCellValue()));
                                }
                            }
                    }
                    salesList.add(sale);
                }
            }
            fis.close();
        } catch (FileNotFoundException ex) {
            System.err.println(ex.getMessage());
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }
        return salesList;
    }
    
}

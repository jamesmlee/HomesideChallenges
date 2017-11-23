/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.challenge3;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author James
 */
public class Write {

    private Map<String, TotalBranchSales> branchMap;

    private static final String DELIMITER = "|";

    public Write() {
        this.branchMap = new HashMap<>();
    }
    
    private void writeCSV() {
        PrintWriter out = null;

        try {
            out = new PrintWriter(new FileWriter("files/SalesData.txt"));
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }

        List<TotalBranchSales> branchList = new ArrayList(branchMap.values());

// out.println() for Total Production would come before this for loop        
        for (TotalBranchSales currentBranch : branchList) {
            out.println(currentBranch.getBranch() + DELIMITER
                    + currentBranch.getUnits() + " units" + DELIMITER
                    + currentBranch.getTotal());
            out.flush();
        }
        out.close();
    }

}

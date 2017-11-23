/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.challenge3;

/**
 *
 * @author James
 */
public class TotalBranchSales {

    private String branch;
    private String units;
    private String total;

    public TotalBranchSales(String branch) {
        this.branch = branch;
    }

    public String getBranch() {
        return branch;
    }

    public String getUnits() {
        return units;
    }

    public void setUnits(String units) {
        this.units = units;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

}

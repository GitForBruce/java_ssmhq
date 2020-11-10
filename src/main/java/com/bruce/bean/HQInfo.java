package com.bruce.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class HQInfo {
    private int id;
    private Date date;
    private String trading_date;
    private String hq_server;
    private String maxdayKLine;
    private String main_instru;
    private String tick_range;
    private String tick_nums;
    private String main_instru_faildesc;
    private String tick_range_faildesc;
    private String tick_nums_faildesc;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // 规范格式
    SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
    public String getDate() {
        return sdf.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTrading_date() {
        return trading_date;
    }

    public void setTrading_date(String trading_date) {
        this.trading_date = trading_date;
    }

    public String getMaxdayKLine() { return maxdayKLine; }

    public void setMaxdayKLine(String maxdayKLine) { this.maxdayKLine = maxdayKLine; }

    public String getHq_server() {
        return hq_server;
    }

    public void setHq_server(String hq_server) {
        this.hq_server = hq_server;
    }

    public String getMain_instru() {
        return main_instru;
    }

    public void setMain_instru(String main_instru) {
        this.main_instru = main_instru;
    }

    public String getTick_range() {
        return tick_range;
    }

    public void setTick_range(String tick_range) {
        this.tick_range = tick_range;
    }

    public String getTick_nums() {
        return tick_nums;
    }

    public void setTick_nums(String tick_nums) {
        this.tick_nums = tick_nums;
    }

    public String getMain_instru_faildesc() {
        return main_instru_faildesc;
    }

    public void setMain_instru_faildesc(String main_instru_faildesc) {
        this.main_instru_faildesc = main_instru_faildesc;
    }

    public String getTick_range_faildesc() {
        return tick_range_faildesc;
    }

    public void setTick_range_faildesc(String tick_range_faildesc) {
        this.tick_range_faildesc = tick_range_faildesc;
    }

    public String getTick_nums_faildesc() {
        return tick_nums_faildesc;
    }

    public void setTick_nums_faildesc(String tick_nums_faildesc) {
        this.tick_nums_faildesc = tick_nums_faildesc;
    }

}

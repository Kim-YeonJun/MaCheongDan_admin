package com.mapojob.admin.domain;

import java.util.Date;
import java.util.Objects;

public class NoticeBoardDto {

    private Integer bno;
    private String  title;
    private String  content;
    private String  writer;
    private int     view_cnt;
    private Date reg_date;
    private String  name;

    public NoticeBoardDto(){}
    public NoticeBoardDto(String title, String content, String writer, String name) {
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NoticeBoardDto that = (NoticeBoardDto) o;
        return Objects.equals(bno, that.bno) && Objects.equals(title, that.title) && Objects.equals(content, that.content) && Objects.equals(writer, that.writer) && Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bno, title, content, writer, name);
    }

    public Integer getBno() {
        return bno;
    }

    public void setBno(Integer bno) {
        this.bno = bno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public int getView_cnt() {
        return view_cnt;
    }

    public void setView_cnt(int view_cnt) {
        this.view_cnt = view_cnt;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "NoticeBoardDto{" +
                "bno=" + bno +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", view_cnt=" + view_cnt +
                ", reg_date=" + reg_date +
                ", name=" + name +
                '}';
    }
}

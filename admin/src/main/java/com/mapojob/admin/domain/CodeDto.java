package com.mapojob.admin.domain;

import java.util.Objects;

public class CodeDto {

    private String CommonCode;
    private String Code;
    private String CodeName;
    private String UseYN;
    private String insertId;
    private String insertDate;
    private String updateId;
    private String updateDate;

    public CodeDto() {
    }

    public CodeDto(String commonCode, String code, String codeName, String useYN, String insertId, String insertDate, String updateId, String updateDate) {
        CommonCode = commonCode;
        Code = code;
        CodeName = codeName;
        UseYN = useYN;
        this.insertId = insertId;
        this.insertDate = insertDate;
        this.updateId = updateId;
        this.updateDate = updateDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CodeDto codeDto = (CodeDto) o;
        return Objects.equals(CommonCode, codeDto.CommonCode) && Objects.equals(Code, codeDto.Code) && Objects.equals(CodeName, codeDto.CodeName) && Objects.equals(UseYN, codeDto.UseYN);
    }

    @Override
    public int hashCode() {
        return Objects.hash(CommonCode, Code, CodeName, UseYN);
    }

    public String getCommonCode() {
        return CommonCode;
    }

    public void setCommonCode(String commonCode) {
        CommonCode = commonCode;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String code) {
        Code = code;
    }

    public String getCodeName() {
        return CodeName;
    }

    public void setCodeName(String codeName) {
        CodeName = codeName;
    }

    public String getUseYN() {
        return UseYN;
    }

    public void setUseYN(String useYN) {
        UseYN = useYN;
    }

    public String getInsertId() {
        return insertId;
    }

    public void setInsertId(String insertId) {
        this.insertId = insertId;
    }

    public String getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(String insertDate) {
        this.insertDate = insertDate;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "CodeDto{" +
                "CommonCode='" + CommonCode + '\'' +
                ", Code='" + Code + '\'' +
                ", CodeName='" + CodeName + '\'' +
                ", UseYN='" + UseYN + '\'' +
                ", insertId='" + insertId + '\'' +
                ", insertDate='" + insertDate + '\'' +
                ", updateId='" + updateId + '\'' +
                ", updateDate='" + updateDate + '\'' +
                '}';
    }
}

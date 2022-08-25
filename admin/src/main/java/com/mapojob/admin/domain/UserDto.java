package com.mapojob.admin.domain;

import java.util.Date;
import java.util.Objects;

public class UserDto {

    private String userId;
    private String userPwd;
    private String userName;
    private String userGender;
    private String userEmail;
    private String userPhone;
    private String userAuthCode;
    private String userAuthName;
    private String userTeamCode;
    private String userTeamName;
    private String userPosCode;
    private String userPosName;
    private String insertId;
    private String insertDate;
    private String updateId;
    private String updateDate;

    public UserDto() {
    }

    public UserDto(String userId, String userPwd, String userName, String userGender, String userEmail, String userPhone, String userAuthCode, String userAuthName, String userTeamCode, String userTeamName, String userPosCode, String userPosName, String insertId, String insertDate, String updateId, String updateDate) {
        this.userId = userId;
        this.userPwd = userPwd;
        this.userName = userName;
        this.userGender = userGender;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
        this.userAuthCode = userAuthCode;
        this.userAuthName = userAuthName;
        this.userTeamCode = userTeamCode;
        this.userTeamName = userTeamName;
        this.userPosCode = userPosCode;
        this.userPosName = userPosName;
        this.insertId = insertId;
        this.insertDate = insertDate;
        this.updateId = updateId;
        this.updateDate = updateDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserDto userDto = (UserDto) o;
        return Objects.equals(userId, userDto.userId) && Objects.equals(userPwd, userDto.userPwd) && Objects.equals(userName, userDto.userName) && Objects.equals(userGender, userDto.userGender) && Objects.equals(userEmail, userDto.userEmail) && Objects.equals(userPhone, userDto.userPhone) && Objects.equals(userAuthCode, userDto.userAuthCode) && Objects.equals(userAuthName, userDto.userAuthName) && Objects.equals(userTeamCode, userDto.userTeamCode) && Objects.equals(userTeamName, userDto.userTeamName) && Objects.equals(userPosCode, userDto.userPosCode) && Objects.equals(userPosName, userDto.userPosName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, userPwd, userName, userGender, userEmail, userPhone, userAuthCode, userAuthName, userTeamCode, userTeamName, userPosCode, userPosName);
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAuthCode() {
        return userAuthCode;
    }

    public void setUserAuthCode(String userAuthCode) {
        this.userAuthCode = userAuthCode;
    }

    public String getUserAuthName() {
        return userAuthName;
    }

    public void setUserAuthName(String userAuthName) {
        this.userAuthName = userAuthName;
    }

    public String getUserTeamCode() {
        return userTeamCode;
    }

    public void setUserTeamCode(String userTeamCode) {
        this.userTeamCode = userTeamCode;
    }

    public String getUserTeamName() {
        return userTeamName;
    }

    public void setUserTeamName(String userTeamName) {
        this.userTeamName = userTeamName;
    }

    public String getUserPosCode() {
        return userPosCode;
    }

    public void setUserPosCode(String userPosCode) {
        this.userPosCode = userPosCode;
    }

    public String getUserPosName() {
        return userPosName;
    }

    public void setUserPosName(String userPosName) {
        this.userPosName = userPosName;
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
        return "UserDto{" +
                "userId='" + userId + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userName='" + userName + '\'' +
                ", userGender='" + userGender + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userAuthCode='" + userAuthCode + '\'' +
                ", userAuthName='" + userAuthName + '\'' +
                ", userTeamCode='" + userTeamCode + '\'' +
                ", userTeamName='" + userTeamName + '\'' +
                ", userPosCode='" + userPosCode + '\'' +
                ", userPosName='" + userPosName + '\'' +
                ", insertId='" + insertId + '\'' +
                ", insertDate='" + insertDate + '\'' +
                ", updateId='" + updateId + '\'' +
                ", updateDate='" + updateDate + '\'' +
                '}';
    }
}

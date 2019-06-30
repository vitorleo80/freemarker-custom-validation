package com.vitorcorrea.freemarkercustomvalidation.model;

import javax.validation.constraints.NotEmpty;

import com.vitorcorrea.freemarkercustomvalidation.validation.ContactNumberConstraint;
import com.vitorcorrea.freemarkercustomvalidation.validation.IpAddressConstraint;

public class User {

    @NotEmpty
    private String username;
    @ContactNumberConstraint
    private String phoneNumber;
    @NotEmpty
    @IpAddressConstraint
    private String ipAddress;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

}

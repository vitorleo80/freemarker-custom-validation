package com.vitorcorrea.freemarkercustomvalidation.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class IpAddressValidator implements ConstraintValidator<IpAddressConstraint, String> {

    private static final String IPADDRESS_PATTERN = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." + "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." + "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." + "([01]?\\d\\d?|2[0-4]\\d|25[0-5])$";
    private Pattern pattern;
    private Matcher matcher;

    @Override
    public void initialize(IpAddressConstraint ipAddress) {
    }

    @Override
    public boolean isValid(String ipAddress, ConstraintValidatorContext context) {

        pattern = Pattern.compile(IPADDRESS_PATTERN);
        matcher = pattern.matcher(ipAddress);
        return matcher.matches();

    }

}

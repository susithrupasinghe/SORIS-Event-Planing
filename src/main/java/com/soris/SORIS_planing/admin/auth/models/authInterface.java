package com.soris.SORIS_planing.admin.auth.models;

import java.sql.ResultSet;
import java.sql.Statement;

public interface authInterface {

    public String getEmail();
    public void setEmail(String email);
    public String getPassword();
    public void setPassword(String password);
    public String getuserId();
    public String getName();
    public boolean checkEmailExists(String email);
    public boolean validate();

}

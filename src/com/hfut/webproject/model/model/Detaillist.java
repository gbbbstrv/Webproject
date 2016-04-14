package com.hfut.webproject.model.model;

import java.sql.Timestamp;

/**
 * Created by hpw on 16/4/12.
 */
public class Detaillist {
    private int id;
    private String componentName;
    private String deployTime;
    private String deadline;
    private String cmcVersion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public String getDeployTime() {
        return deployTime;
    }

    public void setDeployTime(String deployTime) {
        this.deployTime = deployTime;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getCmcVersion() {
        return cmcVersion;
    }

    public void setCmcVersion(String cmcVersion) {
        this.cmcVersion = cmcVersion;
    }
}

package com.hfut.webproject.model;

import java.sql.Timestamp;

/**
 * Created by hpw on 16/4/12.
 */
public class Detail {
    private int id;
    private String componentName;
    private Timestamp deployTime;
    private Timestamp deadline;
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

    public Timestamp getDeployTime() {
        return deployTime;
    }

    public void setDeployTime(Timestamp deployTime) {
        this.deployTime = deployTime;
    }

    public Timestamp getDeadline() {
        return deadline;
    }

    public void setDeadline(Timestamp deadline) {
        this.deadline = deadline;
    }

    public String getCmcVersion() {
        return cmcVersion;
    }

    public void setCmcVersion(String cmcVersion) {
        this.cmcVersion = cmcVersion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Detail that = (Detail) o;

        if (id != that.id) return false;
        if (componentName != null ? !componentName.equals(that.componentName) : that.componentName != null)
            return false;
        if (deployTime != null ? !deployTime.equals(that.deployTime) : that.deployTime != null) return false;
        if (deadline != null ? !deadline.equals(that.deadline) : that.deadline != null) return false;
        if (cmcVersion != null ? !cmcVersion.equals(that.cmcVersion) : that.cmcVersion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (componentName != null ? componentName.hashCode() : 0);
        result = 31 * result + (deployTime != null ? deployTime.hashCode() : 0);
        result = 31 * result + (deadline != null ? deadline.hashCode() : 0);
        result = 31 * result + (cmcVersion != null ? cmcVersion.hashCode() : 0);
        return result;
    }
}

package com.hfut.webproject.model.model;

/**
 * Created by hpw on 16/4/11.
 */
public class Component {
    private static final long serialVersionUID = 2L;
    private int componentId;
    private String componentName;


    public int getComponentId() {
        return componentId;
    }

    public void setComponentId(int componentId) {
        this.componentId = componentId;
    }

    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }
}

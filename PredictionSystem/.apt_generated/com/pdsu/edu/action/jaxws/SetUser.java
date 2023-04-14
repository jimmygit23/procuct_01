
package com.pdsu.edu.action.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "setUser", namespace = "http://action.edu.pdsu.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "setUser", namespace = "http://action.edu.pdsu.com/")
public class SetUser {

    @XmlElement(name = "arg0", namespace = "")
    private com.pdsu.edu.domain.User arg0;

    /**
     * 
     * @return
     *     returns User
     */
    public com.pdsu.edu.domain.User getArg0() {
        return this.arg0;
    }

    /**
     * 
     * @param arg0
     *     the value for the arg0 property
     */
    public void setArg0(com.pdsu.edu.domain.User arg0) {
        this.arg0 = arg0;
    }

}

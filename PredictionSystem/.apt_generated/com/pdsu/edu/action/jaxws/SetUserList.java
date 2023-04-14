
package com.pdsu.edu.action.jaxws;

import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "setUserList", namespace = "http://action.edu.pdsu.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "setUserList", namespace = "http://action.edu.pdsu.com/")
public class SetUserList {

    @XmlElement(name = "arg0", namespace = "")
    private List<com.pdsu.edu.domain.User> arg0;

    /**
     * 
     * @return
     *     returns List<User>
     */
    public List<com.pdsu.edu.domain.User> getArg0() {
        return this.arg0;
    }

    /**
     * 
     * @param arg0
     *     the value for the arg0 property
     */
    public void setArg0(List<com.pdsu.edu.domain.User> arg0) {
        this.arg0 = arg0;
    }

}

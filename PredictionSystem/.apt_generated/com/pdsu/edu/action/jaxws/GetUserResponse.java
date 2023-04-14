
package com.pdsu.edu.action.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getUserResponse", namespace = "http://action.edu.pdsu.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getUserResponse", namespace = "http://action.edu.pdsu.com/")
public class GetUserResponse {

    @XmlElement(name = "return", namespace = "")
    private com.pdsu.edu.domain.User _return;

    /**
     * 
     * @return
     *     returns User
     */
    public com.pdsu.edu.domain.User getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(com.pdsu.edu.domain.User _return) {
        this._return = _return;
    }

}

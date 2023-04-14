
package com.pdsu.edu.action.jaxws;

import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getUserListResponse", namespace = "http://action.edu.pdsu.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getUserListResponse", namespace = "http://action.edu.pdsu.com/")
public class GetUserListResponse {

    @XmlElement(name = "return", namespace = "")
    private List<com.pdsu.edu.domain.User> _return;

    /**
     * 
     * @return
     *     returns List<User>
     */
    public List<com.pdsu.edu.domain.User> getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(List<com.pdsu.edu.domain.User> _return) {
        this._return = _return;
    }

}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.packt.hotel.portal.jpa.data.HmsRoomType;

privileged aspect HmsRoomType_Roo_ToString {
    
    public String HmsRoomType.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("hmsRoomss", "hmsRoomsMasterlists").toString();
    }
    
}
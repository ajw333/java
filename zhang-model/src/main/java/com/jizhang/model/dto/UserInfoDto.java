package com.jizhang.model.dto;

import com.jizhang.model.base.BaseModel;
import com.jizhang.model.core.UserInfo;

/**
 * 用户信息
 */
public class UserInfoDto extends BaseDto {
    public UserInfoDto(UserInfo model){
        super(model);
    }
    public String token;
    public String getToken() {
        return token;
    }
    public void setToken(String token) {
        this.token = token;
    }
}

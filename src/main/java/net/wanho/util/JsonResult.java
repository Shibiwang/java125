package net.wanho.util;

import lombok.Data;

/**
 * Created by DELL on 2019/4/18.
 */
@Data
public class JsonResult {
    private  Integer status;
    private String msg;
    private  Object data;

}

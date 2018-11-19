package com.jizhang.web.util;

/**
 * 手动抛出异常
 * Author: QQ:511570155
 */
public class ZhangHandError extends RuntimeException {
    public ZhangHandError(String msg) {
        super(msg);
    }

    public ZhangHandError() {
        super();
    }
}

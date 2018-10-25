package com.zzx.course.product.util;

import java.sql.Timestamp;
import java.util.Date;

public class DateTime {
    public static Timestamp getNow() {
        return new Timestamp(new Date().getTime());
    }
}

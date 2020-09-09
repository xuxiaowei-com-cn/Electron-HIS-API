package cn.com.xuxiaowei.his.framework.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * <p>
 * 员工表
 * </p>
 *
 * @author 徐晓伟
 * @since 2020-09-09
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("STAFF_INFO")
public class StaffInfo extends Entity {

    private static final long serialVersionUID = 1L;

    /**
     * 员工表主键：PK_STAFF_INFO__STAFF_INFO_ID
     */
    @TableId("STAFF_INFO_ID")
    private BigDecimal staffInfoId;

    /**
     * 员工工号，长度10(中文占3个字符)，不为空：NN_STAFF_INFO__STAFF_NAME，唯一：UK_STAFF_INFO__STAFF_NAME
     */
    @TableField("STAFF_NAME")
    private String staffName;

    /**
     * 员工姓名，长度10(中文占3个字符)，不为空：NN_STAFF_INFO__NAME
     */
    @TableField("NAME")
    private String name;

    /**
     * 密码，长度68(中文占3个字符)，使用BCrypt加密的密码较长，长度60/68位，根据方法不同，略有区别，不为空：NN_STAFF_INFO__PASSWORD
     */
    @TableField("PASSWORD")
    private String password;

    /**
     * 出生日期，不为空：NN_STAFF_INFO__BIRTHDAY
     */
    @TableField("BIRTHDAY")
    private LocalDateTime birthday;

    /**
     * 身份证号码，长度18(中文占3个字符)，不为空：NN_STAFF_INFO__ID_CARD
     */
    @TableField("ID_CARD")
    private String idCard;

    /**
     * 性别代码，长度1，字典表：DICT_SEX，不为空：NN_STAFF_INFO__SEX_CODE，外键：NN_STAFF_INFO__SEX_CODE
     */
    @TableField("SEX_CODE")
    private String sexCode;


    public static final String STAFF_INFO_ID = "STAFF_INFO_ID";

    public static final String STAFF_NAME = "STAFF_NAME";

    public static final String NAME = "NAME";

    public static final String PASSWORD = "PASSWORD";

    public static final String BIRTHDAY = "BIRTHDAY";

    public static final String ID_CARD = "ID_CARD";

    public static final String SEX_CODE = "SEX_CODE";

}

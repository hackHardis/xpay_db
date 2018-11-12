drop table if exists t_orders;

/*==============================================================*/
/* Table: t_orders                                              */
/*==============================================================*/
create table t_orders
(
   id                   varchar(50) not null comment 'id',
   merchant_no          varchar(30) not null comment '商户号',
   merchant_order_id    varchar(80) not null comment '商户方订单号',
   order_id             varchar(80) not null comment '系统流水号',
   order_amount         decimal(10,2) not null comment '订单金额，单位元',
   receipt_amount       decimal(10,2) comment '已充值金额，单位元',
   order_flag           int(4) not null comment '订单状态：
            2：支付金额不足
            1：成功
            0：等待',
   receipt_order_id     varchar(80) comment '第三方流水号',
   receipt_id           int(11) comment '收款账号记录ID',
   payment_type         varchar(50) not null comment '支付类型：
            alipay_qr：支付宝扫码
            alipay_app：支付宝app
            wechat_qr：微信扫码
            wechat_app：微信app
            wechat_qr_sp：特别微信扫码',
   create_time          datetime not null comment '创建时间',
   update_time          datetime comment '更新时间',
   create_by            varchar(64) not null comment '创建人',
   update_by            varchar(64) comment '更新人',
   notify_count         int(4) not null default 0 comment '通知次数',
   notify_flag          int(4) comment '通知商户标识：
            2：通知失败
            1：已通知（商户返回成功）
            0：等待',
   notify_time          datetime comment '通知商户时间',
   notify_result        varchar(255) comment '商户对通知的返回',
   payid_time           datetime comment '用户支付确认回调时间(支付宝等)',
   remark               varchar(255) comment '备注',
   merchat_fee_rate     decimal(10,3) not null comment '商户费率',
   order_fee            decimal(10,2) not null comment '订单手续费',
   notify_url           varchar(255) not null comment '通知商户地址',
   settlement_flag      int(4) comment '订单结算状态
            2：标记异常
            1：已经结算
            0：未结算',
   primary key (id)
);

alter table t_orders comment '订单信息表';

/*==============================================================*/
/* Index: IDX_ORDER_MERCHANT_NO                                 */
/*==============================================================*/
create index IDX_ORDER_MERCHANT_NO on t_orders
(
   merchant_no
);

/*==============================================================*/
/* Index: IDX_ORDER_MERCHANT_ORDER_ID                           */
/*==============================================================*/
create index IDX_ORDER_MERCHANT_ORDER_ID on t_orders
(
   merchant_order_id
);

/*==============================================================*/
/* Index: IDX_ORDER_ORDER_ID                                    */
/*==============================================================*/
create index IDX_ORDER_ORDER_ID on t_orders
(
   order_id
);

/*==============================================================*/
/* Index: IDX_ORDER_3RD_ORDER_ID                                */
/*==============================================================*/
create index IDX_ORDER_3RD_ORDER_ID on t_orders
(
   receipt_order_id
);

drop table if exists t_merchant_info;

/*==============================================================*/
/* Table: t_merchant_info                                       */
/*==============================================================*/
create table t_merchant_info
(
   id                   int(11) not null auto_increment comment 'id',
   merchant_no          varchar(30) not null comment '商户号',
   merchant_key         varchar(255) not null comment '商户key',
   merchat_fee_rate     decimal(10,3) not null comment '商户费率（每订单，百分数）',
   company              varchar(255) comment '公司名称',
   website              varchar(255) comment '公司网站',
   create_by            varchar(64) not null comment '创建人',
   create_time          datetime not null comment '创建时间',
   update_by            varchar(64) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(255) comment '备注',
   merchat_flag         smallint not null comment '商户号状态:
            0：禁用
            1：正常
            2：欠费',
   notify_url           varchar(255) comment '商户订单通知地址',
   user_id              int(11) comment '用户ID',
   primary key (id)
);

alter table t_merchant_info comment '商户信息表';

/*==============================================================*/
/* Index: UDX_MERCHANT_INFO_NO                                  */
/*==============================================================*/
create unique index UDX_MERCHANT_INFO_NO on t_merchant_info
(
   merchant_no
);

drop table if exists t_receipt_accounts;

/*==============================================================*/
/* Table: t_receipt_accounts                                    */
/*==============================================================*/
create table t_receipt_accounts
(
   id                   int(11) not null auto_increment comment 'id',
   receipt_account      varchar(80) not null comment '收款账号',
   receipt_type         varchar(50) not null comment '收款账号类型：
            alipay：支付宝
            wechat：微信
            alipay_sp：支付宝个人
            wechat_sp：微信个人
            ',
   payment_type         char(10) comment '支付类型
            alipay_qr：支付宝扫码
            alipay_app：支付宝app
            wechat_qr：微信扫码
            wechat_app：微信app
            wechat_qr_sp：特别微信扫码',
   receipt_gateway      varchar(255) comment '收款网关',
   account_pub_key      varchar(2500) comment '账号公钥',
   account_prv_key      varchar(2500) comment '账号私钥',
   create_by            varchar(64) not null comment '创建人',
   create_time          datetime not null comment '创建时间',
   update_by            varchar(64) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(255) comment '备注',
   third_pub_key        varchar(2500) comment '第三方公钥',
   account_flag         int(4) not null comment '账号状态：
            1：启用；
            0：停用；
            -1：日流量限额关闭',
   daily_limit          decimal(12,3) not null comment '账号每日限流',
   daily_traffic        decimal(12,3) comment '账号每日流量',
   third_account_id     varchar(50) comment '第三方Id',
   receipt_phone        varchar(20) not null comment '收款账号手机号码',
   primary key (id)
);

alter table t_receipt_accounts comment '收款账号表';

/*==============================================================*/
/* Index: UDX_RECEIPT_ACC_ACCOUNT                               */
/*==============================================================*/
create unique index UDX_RECEIPT_ACC_ACCOUNT on t_receipt_accounts
(
   receipt_account
);

drop table if exists t_merchant_receipts;

/*==============================================================*/
/* Table: t_merchant_receipts                                   */
/*==============================================================*/
create table t_merchant_receipts
(
   id                   int(11) not null auto_increment comment 'ID',
   merchant_info_id     int(11) not null comment '商户表ID',
   receipt_account_id   int(11) not null comment '收款账号表ID',
   primary key (id)
);

alter table t_merchant_receipts comment '收款账号规则表';

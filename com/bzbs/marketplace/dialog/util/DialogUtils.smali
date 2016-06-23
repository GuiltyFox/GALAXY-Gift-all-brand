.class public Lcom/bzbs/marketplace/dialog/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field public static final BUNDLE_KEY_DATA:Ljava/lang/String; = ":data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlerUpdateProfiletBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 20
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "strOK"    # Ljava/lang/String;
    .param p3, "strClose"    # Ljava/lang/String;
    .param p4, "msgHeader"    # Ljava/lang/String;
    .param p5, "msgContent"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "itemMarketDetail"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    .line 55
    const/16 v7, 0x8

    const/high16 v8, 0x40800000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v10}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    move-result-object v11

    .line 56
    .local v11, "fragment":Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v11, p1, v0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static getAlertBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "strOK"    # Ljava/lang/String;
    .param p3, "strClose"    # Ljava/lang/String;
    .param p4, "msgHeader"    # Ljava/lang/String;
    .param p5, "msgContent"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;

    .prologue
    .line 45
    const/16 v6, 0x8

    const/high16 v7, 0x40800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v9}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    move-result-object v10

    .line 46
    .local v10, "fragment":Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v10, p1, v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static getAlertBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 20
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "strOK"    # Ljava/lang/String;
    .param p3, "strClose"    # Ljava/lang/String;
    .param p4, "msgHeader"    # Ljava/lang/String;
    .param p5, "msgContent"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "itemMarketDetail"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    .line 50
    const/16 v7, 0x8

    const/high16 v8, 0x40800000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v10}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    move-result-object v11

    .line 51
    .local v11, "fragment":Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v11, p1, v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static getAlertBlurDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "strOK"    # Ljava/lang/String;
    .param p3, "strClose"    # Ljava/lang/String;
    .param p4, "msgHeader"    # Ljava/lang/String;
    .param p5, "msgContent"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;

    .prologue
    .line 40
    const/16 v6, 0x8

    const/high16 v7, 0x40800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v9}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    move-result-object v10

    .line 41
    .local v10, "fragment":Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v10, p1, v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static getDialogConditionDealsGet(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    const/4 v4, 0x0

    .line 76
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    move-result-object v6

    .line 77
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static getDialogConditionDraws(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    const/4 v4, 0x0

    .line 66
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    move-result-object v6

    .line 67
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static getDialogConfirmDealsGet(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    const/4 v4, 0x0

    .line 71
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    move-result-object v6

    .line 72
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static getDialogError(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/PurchaseModel;Ljava/lang/String;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/PurchaseModel;
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 150
    const/16 v3, 0x8

    const/high16 v4, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/PurchaseModel;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    move-result-object v7

    .line 151
    .local v7, "fragment":Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v7, p1, v0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static getDialogError(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 122
    const/16 v3, 0x8

    const/high16 v4, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    move-result-object v7

    .line 123
    .local v7, "fragment":Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v7, p1, v0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static getDialogReviewGift(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/bean/Campaign;

    .prologue
    const/4 v4, 0x0

    .line 155
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/bean/Campaign;IFZZ)Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    move-result-object v6

    .line 156
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static getDialogSentByPost(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    const/4 v4, 0x0

    .line 81
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;

    move-result-object v6

    .line 82
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static getDialogShowCode(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/PurchaseModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V
    .registers 25
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "itemPurchaseModel"    # Lcom/bzbs/marketplace/model/PurchaseModel;
    .param p3, "itemConfirmDialog"    # Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .prologue
    .line 129
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 130
    .local v19, "dateNow":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 131
    .local v10, "server_time":J
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    .line 135
    .local v12, "local_time":J
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/PurchaseModel;->getID()I

    move-result v3

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/PurchaseModel;->getAgencyName()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/PurchaseModel;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getExpireIn()J

    move-result-wide v6

    .line 139
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getSerial()Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getPrivilegeMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    const/high16 v16, 0x40800000

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    .line 133
    invoke-static/range {v2 .. v18}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->newInstance(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    move-result-object v20

    .line 146
    .local v20, "fragment":Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;
    const-string/jumbo v2, "blur_sample"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static getDialogShowCode(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V
    .registers 25
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "itemMarketDetail"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .param p3, "itemConfirmDialog"    # Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .prologue
    .line 101
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 102
    .local v19, "dateNow":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 103
    .local v10, "server_time":J
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    .line 107
    .local v12, "local_time":J
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getExpireIn()J

    move-result-wide v6

    .line 111
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getSerial()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual/range {p3 .. p3}, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->getPrivilegeMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 115
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    const/high16 v16, 0x40800000

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    .line 105
    invoke-static/range {v2 .. v18}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->newInstance(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    move-result-object v20

    .line 118
    .local v20, "fragment":Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;
    const-string/jumbo v2, "blur_sample"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static getDrawBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "item"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    const/4 v4, 0x0

    .line 61
    const/16 v2, 0x8

    const/high16 v3, 0x40800000

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    move-result-object v6

    .line 62
    .local v6, "fragment":Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;
    const-string/jumbo v0, "blur_sample"

    invoke-virtual {v6, p1, v0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static getFullImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "image"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 92
    const-string/jumbo v0, "?"

    const-string/jumbo v1, "-large?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

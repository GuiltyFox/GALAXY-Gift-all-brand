.class public Lcom/bzbs/marketplace/dialog/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

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

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

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

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 155
    const/16 v2, 0x8

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/bean/Campaign;IFZZ)Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 61
    const/16 v2, 0x8

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V
    .registers 23

    .prologue
    .line 101
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 102
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 103
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    .line 107
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

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    const/high16 v16, 0x40800000    # 4.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    .line 105
    invoke-static/range {v2 .. v18}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    move-result-object v2

    .line 118
    const-string/jumbo v3, "blur_sample"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 122
    const/16 v3, 0x8

    const/high16 v4, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    .prologue
    .line 45
    const/16 v6, 0x8

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v9}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 19

    .prologue
    .line 50
    const/16 v7, 0x8

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v10}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 66
    const/16 v2, 0x8

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 19

    .prologue
    .line 55
    const/16 v7, 0x8

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v10}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 76
    const/16 v2, 0x8

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static d(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 81
    const/16 v2, 0x8

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "blur_sample"

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method

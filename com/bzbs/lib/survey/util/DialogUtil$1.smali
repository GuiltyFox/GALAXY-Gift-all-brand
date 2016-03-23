.class final Lcom/bzbs/lib/survey/util/DialogUtil$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field final synthetic val$imgProgress:Landroid/widget/ImageView;

.field final synthetic val$plngExpireIn:J

.field final synthetic val$strExpire:Ljava/lang/String;

.field final synthetic val$tvSerial4:Landroid/widget/TextView;

.field final synthetic val$tvSerial7:Landroid/widget/TextView;

.field final synthetic val$tvTitleTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;JLandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 14

    .prologue
    .line 731
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$activityContext:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$plngExpireIn:J

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvSerial4:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$imgProgress:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvTitleTime:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$strExpire:Ljava/lang/String;

    iput-object p13, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvSerial7:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    .prologue
    .line 734
    const/16 v28, 0x0

    sput-boolean v28, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    .line 736
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 737
    .local v7, "dateStart":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v26, v28, v30

    .line 739
    .local v26, "time_start":J
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v28, v0

    if-eqz v28, :cond_168

    sget-boolean v28, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    if-nez v28, :cond_168

    .line 741
    :try_start_1d
    const-string/jumbo v23, ""

    .line 742
    .local v23, "strText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$plngExpireIn:J

    move-wide/from16 v28, v0

    add-long v10, v26, v28

    .line 743
    .local v10, "expire_time":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 744
    .local v6, "dateNow":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    sub-long v4, v28, v26

    .line 745
    .local v4, "add_time":J
    add-long v20, v26, v4

    .line 746
    .local v20, "server_time_running":J
    cmp-long v28, v20, v10

    if-lez v28, :cond_96

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v28, v0

    new-instance v29, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;-><init>(Lcom/bzbs/lib/survey/util/DialogUtil$1;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$strExpire:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 761
    const/16 v28, 0x1

    sput-boolean v28, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    .line 788
    :goto_59
    move-object/from16 v24, v23

    .line 789
    .local v24, "strTextFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v28, v0

    new-instance v29, Lcom/bzbs/lib/survey/util/DialogUtil$1$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/util/DialogUtil$1$2;-><init>(Lcom/bzbs/lib/survey/util/DialogUtil$1;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6f} :catch_147

    .line 799
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v10    # "expire_time":J
    .end local v20    # "server_time_running":J
    .end local v23    # "strText":Ljava/lang/String;
    .end local v24    # "strTextFinal":Ljava/lang/String;
    :goto_6f
    const-wide/16 v28, 0x3e8

    :try_start_71
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_11

    .line 800
    :catch_75
    move-exception v8

    .line 801
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v28, "DialogUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "(InterruptedException|showDialogSerial):"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 763
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "add_time":J
    .restart local v6    # "dateNow":Ljava/util/Date;
    .restart local v10    # "expire_time":J
    .restart local v20    # "server_time_running":J
    .restart local v23    # "strText":Ljava/lang/String;
    :cond_96
    sub-long v16, v10, v20

    .line 765
    .local v16, "remain_time":J
    const-wide/16 v28, 0xe10

    :try_start_9a
    div-long v12, v16, v28

    .line 766
    .local v12, "hours":J
    const-wide/16 v28, 0xe10

    rem-long v28, v16, v28

    const-wide/16 v30, 0x3c

    div-long v14, v28, v30

    .line 767
    .local v14, "minutes":J
    const-wide/16 v28, 0x3c

    rem-long v18, v16, v28

    .line 769
    .local v18, "seconds":J
    const-string/jumbo v9, ""

    .line 770
    .local v9, "strMinute":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 771
    .local v22, "strSecond":Ljava/lang/String;
    const-wide/16 v28, 0xa

    cmp-long v28, v14, v28

    if-gez v28, :cond_117

    .line 772
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 776
    :goto_ca
    const-wide/16 v28, 0xa

    cmp-long v28, v18, v28

    if-gez v28, :cond_12e

    .line 777
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 782
    :goto_e8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 785
    .local v25, "timeString":Ljava/lang/String;
    move-object/from16 v23, v25

    goto/16 :goto_59

    .line 774
    .end local v25    # "timeString":Ljava/lang/String;
    :cond_117
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_ca

    .line 779
    :cond_12e
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_145} :catch_147

    move-result-object v22

    goto :goto_e8

    .line 794
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v9    # "strMinute":Ljava/lang/String;
    .end local v10    # "expire_time":J
    .end local v12    # "hours":J
    .end local v14    # "minutes":J
    .end local v16    # "remain_time":J
    .end local v18    # "seconds":J
    .end local v20    # "server_time_running":J
    .end local v22    # "strSecond":Ljava/lang/String;
    .end local v23    # "strText":Ljava/lang/String;
    :catch_147
    move-exception v8

    .line 795
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v28, "DialogUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "(Exception|showDialogSerial):"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 804
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_168
    return-void
.end method

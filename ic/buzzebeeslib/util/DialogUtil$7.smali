.class Lic/buzzebeeslib/util/DialogUtil$7;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$local_time:J

.field private final synthetic val$pLngExpireIn:J

.field private final synthetic val$server_time:J

.field private final synthetic val$strExpire:Ljava/lang/String;

.field private final synthetic val$strRemain:Ljava/lang/String;

.field private final synthetic val$tvSerial4:Landroid/widget/TextView;

.field private final synthetic val$tvSerial7:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;JJJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$activityContext:Landroid/app/Activity;

    iput-wide p2, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$server_time:J

    iput-wide p4, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$pLngExpireIn:J

    iput-wide p6, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$local_time:J

    iput-object p8, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$strExpire:Ljava/lang/String;

    iput-object p9, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$strRemain:Ljava/lang/String;

    iput-object p10, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$tvSerial4:Landroid/widget/TextView;

    iput-object p11, p0, Lic/buzzebeeslib/util/DialogUtil$7;->val$tvSerial7:Landroid/widget/TextView;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 629
    const/16 v25, 0x0

    sput-boolean v25, Lic/buzzebeeslib/util/DialogUtil;->gIsFinish:Z

    .line 631
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    sget-boolean v25, Lic/buzzebeeslib/util/DialogUtil;->gIsFinish:Z

    if-eqz v25, :cond_11

    .line 692
    :cond_10
    return-void

    .line 633
    :cond_11
    :try_start_11
    const-string v22, ""

    .line 636
    .local v22, "strText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$server_time:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$pLngExpireIn:J

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .line 637
    .local v8, "expire_time":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 638
    .local v6, "dateNow":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$local_time:J

    move-wide/from16 v28, v0

    sub-long v4, v26, v28

    .line 639
    .local v4, "add_time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$server_time:J

    move-wide/from16 v26, v0

    add-long v18, v26, v4

    .line 640
    .local v18, "server_time_running":J
    cmp-long v25, v18, v8

    if-lez v25, :cond_a6

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lic/buzzebeeslib/util/DialogUtil$7$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$tvSerial4:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/util/DialogUtil$7$1;-><init>(Lic/buzzebeeslib/util/DialogUtil$7;Landroid/widget/TextView;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$strExpire:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 647
    const/16 v25, 0x1

    sput-boolean v25, Lic/buzzebeeslib/util/DialogUtil;->gIsFinish:Z

    .line 676
    :goto_66
    move-object/from16 v23, v22

    .line 677
    .local v23, "strTextFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lic/buzzebeeslib/util/DialogUtil$7$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$tvSerial7:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lic/buzzebeeslib/util/DialogUtil$7$2;-><init>(Lic/buzzebeeslib/util/DialogUtil$7;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_84} :catch_156

    .line 687
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v8    # "expire_time":J
    .end local v18    # "server_time_running":J
    .end local v22    # "strText":Ljava/lang/String;
    .end local v23    # "strTextFinal":Ljava/lang/String;
    :goto_84
    const-wide/16 v26, 0x3e8

    :try_start_86
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_89} :catch_8b

    goto/16 :goto_4

    .line 688
    :catch_8b
    move-exception v7

    .line 689
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v25, "DialogUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "(InterruptedException|showDialogSerial):"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 649
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "add_time":J
    .restart local v6    # "dateNow":Ljava/util/Date;
    .restart local v8    # "expire_time":J
    .restart local v18    # "server_time_running":J
    .restart local v22    # "strText":Ljava/lang/String;
    :cond_a6
    sub-long v14, v8, v18

    .line 654
    .local v14, "remain_time":J
    const-wide/16 v26, 0xe10

    :try_start_aa
    div-long v10, v14, v26

    .line 655
    .local v10, "hours":J
    const-wide/16 v26, 0xe10

    rem-long v26, v14, v26

    const-wide/16 v28, 0x3c

    div-long v12, v26, v28

    .line 656
    .local v12, "minutes":J
    const-wide/16 v26, 0x3c

    rem-long v16, v14, v26

    .line 658
    .local v16, "seconds":J
    const-string v20, ""

    .line 659
    .local v20, "strMinute":Ljava/lang/String;
    const-string v21, ""

    .line 660
    .local v21, "strSecond":Ljava/lang/String;
    const-wide/16 v26, 0xa

    cmp-long v25, v12, v26

    if-gez v25, :cond_134

    .line 661
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 665
    :goto_d3
    const-wide/16 v26, 0xa

    cmp-long v25, v16, v26

    if-gez v25, :cond_144

    .line 666
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 671
    :goto_ec
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 673
    .local v24, "timeString":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/util/DialogUtil$7;->val$strRemain:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_66

    .line 663
    .end local v24    # "timeString":Ljava/lang/String;
    :cond_134
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_d3

    .line 668
    :cond_144
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_154} :catch_156

    move-result-object v21

    goto :goto_ec

    .line 682
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v8    # "expire_time":J
    .end local v10    # "hours":J
    .end local v12    # "minutes":J
    .end local v14    # "remain_time":J
    .end local v16    # "seconds":J
    .end local v18    # "server_time_running":J
    .end local v20    # "strMinute":Ljava/lang/String;
    .end local v21    # "strSecond":Ljava/lang/String;
    .end local v22    # "strText":Ljava/lang/String;
    :catch_156
    move-exception v7

    .line 683
    .local v7, "e":Ljava/lang/Exception;
    const-string v25, "DialogUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "(Exception|showDialogSerial):"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84
.end method

.class final Lcom/bzbs/lib/survey/util/DialogUtil$9;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil;->showDialogSerialGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$local_time:J

.field final synthetic val$pLngExpireIn:J

.field final synthetic val$server_time:J

.field final synthetic val$strExpire:Ljava/lang/String;

.field final synthetic val$strRemain:Ljava/lang/String;

.field final synthetic val$tvDateTime:Landroid/widget/TextView;

.field final synthetic val$tvSerial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;JJJLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 12

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$activityContext:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$server_time:J

    iput-wide p4, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$pLngExpireIn:J

    iput-wide p6, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$local_time:J

    iput-object p8, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$tvSerial:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$strExpire:Ljava/lang/String;

    iput-object p10, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$strRemain:Ljava/lang/String;

    iput-object p11, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$tvDateTime:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 1303
    const/16 v25, 0x0

    sput-boolean v25, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    .line 1304
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    if-eqz v25, :cond_191

    sget-boolean v25, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    if-nez v25, :cond_191

    .line 1306
    :try_start_10
    const-string/jumbo v22, ""

    .line 1310
    .local v22, "strText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$server_time:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$pLngExpireIn:J

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .line 1312
    .local v8, "expire_time":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1313
    .local v6, "dateNow":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$local_time:J

    move-wide/from16 v28, v0

    sub-long v4, v26, v28

    .line 1314
    .local v4, "add_time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$server_time:J

    move-wide/from16 v26, v0

    add-long v18, v26, v4

    .line 1315
    .local v18, "server_time_running":J
    cmp-long v25, v18, v8

    if-lez v25, :cond_9b

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lcom/bzbs/lib/survey/util/DialogUtil$9$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/util/DialogUtil$9$1;-><init>(Lcom/bzbs/lib/survey/util/DialogUtil$9;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$strExpire:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1322
    const/16 v25, 0x1

    sput-boolean v25, Lcom/bzbs/lib/survey/util/DialogUtil;->gIsFinish:Z

    .line 1351
    :goto_5e
    move-object/from16 v23, v22

    .line 1352
    .local v23, "strTextFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;-><init>(Lcom/bzbs/lib/survey/util/DialogUtil$9;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_74} :catch_170

    .line 1362
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v8    # "expire_time":J
    .end local v18    # "server_time_running":J
    .end local v22    # "strText":Ljava/lang/String;
    .end local v23    # "strTextFinal":Ljava/lang/String;
    :goto_74
    const-wide/16 v26, 0x3e8

    :try_start_76
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_4

    .line 1363
    :catch_7a
    move-exception v7

    .line 1364
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v25, "DialogUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "(InterruptedException|showDialogSerial):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1324
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "add_time":J
    .restart local v6    # "dateNow":Ljava/util/Date;
    .restart local v8    # "expire_time":J
    .restart local v18    # "server_time_running":J
    .restart local v22    # "strText":Ljava/lang/String;
    :cond_9b
    sub-long v14, v8, v18

    .line 1329
    .local v14, "remain_time":J
    const-wide/16 v26, 0xe10

    :try_start_9f
    div-long v10, v14, v26

    .line 1330
    .local v10, "hours":J
    const-wide/16 v26, 0xe10

    rem-long v26, v14, v26

    const-wide/16 v28, 0x3c

    div-long v12, v26, v28

    .line 1331
    .local v12, "minutes":J
    const-wide/16 v26, 0x3c

    rem-long v16, v14, v26

    .line 1333
    .local v16, "seconds":J
    const-string/jumbo v20, ""

    .line 1334
    .local v20, "strMinute":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 1335
    .local v21, "strSecond":Ljava/lang/String;
    const-wide/16 v26, 0xa

    cmp-long v25, v12, v26

    if-gez v25, :cond_13e

    .line 1336
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1340
    :goto_cf
    const-wide/16 v26, 0xa

    cmp-long v25, v16, v26

    if-gez v25, :cond_156

    .line 1341
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1346
    :goto_ed
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1348
    .local v24, "timeString":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$strRemain:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5e

    .line 1338
    .end local v24    # "timeString":Ljava/lang/String;
    :cond_13e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_cf

    .line 1343
    :cond_156
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_16d} :catch_170

    move-result-object v21

    goto/16 :goto_ed

    .line 1357
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
    :catch_170
    move-exception v7

    .line 1358
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "DialogUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "(Exception|showDialogSerial):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 1367
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_191
    return-void
.end method

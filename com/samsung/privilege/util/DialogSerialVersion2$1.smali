.class Lcom/samsung/privilege/util/DialogSerialVersion2$1;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$imgProgress:Landroid/widget/ImageView;

.field private final synthetic val$plngExpireIn:Ljava/lang/Long;

.field private final synthetic val$tvSerialNumber:Landroid/widget/TextView;

.field private final synthetic val$tvTimeLeft:Landroid/widget/TextView;

.field private final synthetic val$tvTitleTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$activityContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$plngExpireIn:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvSerialNumber:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$imgProgress:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvTitleTime:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvTimeLeft:Landroid/widget/TextView;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 38

    .prologue
    .line 258
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/privilege/util/DialogSerialVersion2;->gIsFinish:Z

    .line 260
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 261
    .local v15, "dateStart":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v34, v2, v4

    .line 263
    .local v34, "time_start":J
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$activityContext:Landroid/app/Activity;

    if-eqz v2, :cond_1a

    sget-boolean v2, Lcom/samsung/privilege/util/DialogSerialVersion2;->gIsFinish:Z

    if-eqz v2, :cond_1b

    .line 328
    :cond_1a
    return-void

    .line 265
    :cond_1b
    :try_start_1b
    const-string v31, ""

    .line 266
    .local v31, "strText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$plngExpireIn:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v18, v34, v2

    .line 267
    .local v18, "expire_time":J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 268
    .local v14, "dateNow":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v12, v2, v34

    .line 269
    .local v12, "add_time":J
    add-long v28, v34, v12

    .line 270
    .local v28, "server_time_running":J
    cmp-long v2, v28, v18

    if-lez v2, :cond_b3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v36, v0

    new-instance v2, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvSerialNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$imgProgress:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvTitleTime:Landroid/widget/TextView;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;-><init>(Lcom/samsung/privilege/util/DialogSerialVersion2$1;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$activityContext:Landroid/app/Activity;

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 285
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/privilege/util/DialogSerialVersion2;->gIsFinish:Z

    .line 312
    :goto_7b
    move-object/from16 v32, v31

    .line 313
    .local v32, "strTextFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$activityContext:Landroid/app/Activity;

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialVersion2$1$2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogSerialVersion2$1;->val$tvTimeLeft:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v4, v1}, Lcom/samsung/privilege/util/DialogSerialVersion2$1$2;-><init>(Lcom/samsung/privilege/util/DialogSerialVersion2$1;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_91} :catch_140

    .line 323
    .end local v12    # "add_time":J
    .end local v14    # "dateNow":Ljava/util/Date;
    .end local v18    # "expire_time":J
    .end local v28    # "server_time_running":J
    .end local v31    # "strText":Ljava/lang/String;
    .end local v32    # "strTextFinal":Ljava/lang/String;
    :goto_91
    const-wide/16 v2, 0x3e8

    :try_start_93
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_10

    .line 324
    :catch_98
    move-exception v16

    .line 325
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string v2, "DialogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(InterruptedException|showDialogSerial):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 287
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "add_time":J
    .restart local v14    # "dateNow":Ljava/util/Date;
    .restart local v18    # "expire_time":J
    .restart local v28    # "server_time_running":J
    .restart local v31    # "strText":Ljava/lang/String;
    :cond_b3
    sub-long v24, v18, v28

    .line 289
    .local v24, "remain_time":J
    const-wide/16 v2, 0xe10

    :try_start_b7
    div-long v20, v24, v2

    .line 290
    .local v20, "hours":J
    const-wide/16 v2, 0xe10

    rem-long v2, v24, v2

    const-wide/16 v4, 0x3c

    div-long v22, v2, v4

    .line 291
    .local v22, "minutes":J
    const-wide/16 v2, 0x3c

    rem-long v26, v24, v2

    .line 293
    .local v26, "seconds":J
    const-string v17, ""

    .line 294
    .local v17, "strMinute":Ljava/lang/String;
    const-string v30, ""

    .line 295
    .local v30, "strSecond":Ljava/lang/String;
    const-wide/16 v2, 0xa

    cmp-long v2, v22, v2

    if-gez v2, :cond_120

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 300
    :goto_e0
    const-wide/16 v2, 0xa

    cmp-long v2, v26, v2

    if-gez v2, :cond_130

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 306
    :goto_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 309
    .local v33, "timeString":Ljava/lang/String;
    move-object/from16 v31, v33

    goto/16 :goto_7b

    .line 298
    .end local v33    # "timeString":Ljava/lang/String;
    :cond_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_e0

    .line 303
    :cond_130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_13e} :catch_140

    move-result-object v30

    goto :goto_f7

    .line 318
    .end local v12    # "add_time":J
    .end local v14    # "dateNow":Ljava/util/Date;
    .end local v17    # "strMinute":Ljava/lang/String;
    .end local v18    # "expire_time":J
    .end local v20    # "hours":J
    .end local v22    # "minutes":J
    .end local v24    # "remain_time":J
    .end local v26    # "seconds":J
    .end local v28    # "server_time_running":J
    .end local v30    # "strSecond":Ljava/lang/String;
    .end local v31    # "strText":Ljava/lang/String;
    :catch_140
    move-exception v16

    .line 319
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "DialogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|showDialogSerial):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_91
.end method

.class Lcom/samsung/privilege/util/DialogUtil$15;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogSerialBarcode(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/Purchasing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$imgBarcode:Landroid/widget/ImageView;

.field private final synthetic val$local_time:J

.field private final synthetic val$minutes_valid_after_used:I

.field private final synthetic val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

.field private final synthetic val$redeem_date:J

.field private final synthetic val$server_time:J

.field private final synthetic val$strExpire:Ljava/lang/String;

.field private final synthetic val$strRemain:Ljava/lang/String;

.field private final synthetic val$tvDateTime:Landroid/widget/TextView;

.field private final synthetic val$tvSerial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;JILcom/samsung/privilege/bean/Purchasing;JJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 15

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$activityContext:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$redeem_date:J

    iput p4, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$minutes_valid_after_used:I

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iput-wide p6, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$local_time:J

    iput-wide p8, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$server_time:J

    iput-object p10, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$strExpire:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$strRemain:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$tvSerial:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$imgBarcode:Landroid/widget/ImageView;

    iput-object p14, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$tvDateTime:Landroid/widget/TextView;

    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    .prologue
    .line 1745
    const/16 v25, 0x0

    sput-boolean v25, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 1746
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    sget-boolean v25, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    if-eqz v25, :cond_11

    .line 1811
    :cond_10
    return-void

    .line 1748
    :cond_11
    :try_start_11
    const-string v22, ""

    .line 1749
    .local v22, "strText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$redeem_date:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x6270

    sub-long v25, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$minutes_valid_after_used:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x3c

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v8, v25, v27

    .line 1750
    .local v8, "expire_time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v25, v0

    if-eqz v25, :cond_75

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_75

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/privilege/bean/Purchasing;->UsedDate:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x6270

    sub-long v25, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$minutes_valid_after_used:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x3c

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v8, v25, v27

    .line 1755
    :cond_75
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1756
    .local v6, "dateNow":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$local_time:J

    move-wide/from16 v27, v0

    sub-long v4, v25, v27

    .line 1757
    .local v4, "add_time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$server_time:J

    move-wide/from16 v25, v0

    add-long v18, v25, v4

    .line 1758
    .local v18, "server_time_running":J
    cmp-long v25, v18, v8

    if-lez v25, :cond_102

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lcom/samsung/privilege/util/DialogUtil$15$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$tvSerial:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$imgBarcode:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$15$1;-><init>(Lcom/samsung/privilege/util/DialogUtil$15;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$strExpire:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1766
    const/16 v25, 0x1

    sput-boolean v25, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 1795
    :goto_c2
    move-object/from16 v23, v22

    .line 1796
    .local v23, "strTextFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$activityContext:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lcom/samsung/privilege/util/DialogUtil$15$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$tvDateTime:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$15$2;-><init>(Lcom/samsung/privilege/util/DialogUtil$15;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_e0} :catch_1b6

    .line 1806
    .end local v4    # "add_time":J
    .end local v6    # "dateNow":Ljava/util/Date;
    .end local v8    # "expire_time":J
    .end local v18    # "server_time_running":J
    .end local v22    # "strText":Ljava/lang/String;
    .end local v23    # "strTextFinal":Ljava/lang/String;
    :goto_e0
    const-wide/16 v25, 0x3e8

    :try_start_e2
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e5
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_e5} :catch_e7

    goto/16 :goto_4

    .line 1807
    :catch_e7
    move-exception v7

    .line 1808
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

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1768
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "add_time":J
    .restart local v6    # "dateNow":Ljava/util/Date;
    .restart local v8    # "expire_time":J
    .restart local v18    # "server_time_running":J
    .restart local v22    # "strText":Ljava/lang/String;
    :cond_102
    sub-long v14, v8, v18

    .line 1773
    .local v14, "remain_time":J
    const-wide/16 v25, 0xe10

    :try_start_106
    div-long v10, v14, v25

    .line 1774
    .local v10, "hours":J
    const-wide/16 v25, 0xe10

    rem-long v25, v14, v25

    const-wide/16 v27, 0x3c

    div-long v12, v25, v27

    .line 1775
    .local v12, "minutes":J
    const-wide/16 v25, 0x3c

    rem-long v16, v14, v25

    .line 1777
    .local v16, "seconds":J
    const-string v20, ""

    .line 1778
    .local v20, "strMinute":Ljava/lang/String;
    const-string v21, ""

    .line 1779
    .local v21, "strSecond":Ljava/lang/String;
    const-wide/16 v25, 0xa

    cmp-long v25, v12, v25

    if-gez v25, :cond_194

    .line 1780
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1784
    :goto_12f
    const-wide/16 v25, 0xa

    cmp-long v25, v16, v25

    if-gez v25, :cond_1a4

    .line 1785
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1790
    :goto_148
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

    .line 1792
    .local v24, "timeString":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogUtil$15;->val$strRemain:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_c2

    .line 1782
    .end local v24    # "timeString":Ljava/lang/String;
    :cond_194
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_12f

    .line 1787
    :cond_1a4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_1b4} :catch_1b6

    move-result-object v21

    goto :goto_148

    .line 1801
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
    :catch_1b6
    move-exception v7

    .line 1802
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

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0
.end method

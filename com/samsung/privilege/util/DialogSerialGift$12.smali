.class final Lcom/samsung/privilege/util/DialogSerialGift$12;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Landroid/app/Dialog;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Landroid/widget/LinearLayout;

.field final synthetic g:Landroid/widget/LinearLayout;

.field final synthetic h:Landroid/widget/LinearLayout;

.field final synthetic i:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 508
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->f:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->h:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->i:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v2, 0x3e8

    .line 511
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Z)Z

    .line 513
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 514
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long v2, v0, v2

    .line 516
    :goto_13
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->a:Landroid/content/Context;

    if-eqz v0, :cond_134

    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->d()Z

    move-result v0

    if-nez v0, :cond_134

    .line 518
    :try_start_1d
    const-string/jumbo v0, ""

    .line 519
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 520
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 521
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 522
    add-long/2addr v4, v2

    .line 523
    cmp-long v6, v4, v0

    if-ltz v6, :cond_7a

    .line 524
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->c:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Lcom/samsung/privilege/util/DialogSerialGift$12$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/util/DialogSerialGift$12$1;-><init>(Lcom/samsung/privilege/util/DialogSerialGift$12;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    :goto_47
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Lcom/samsung/privilege/util/DialogSerialGift$12$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/util/DialogSerialGift$12$2;-><init>(Lcom/samsung/privilege/util/DialogSerialGift$12;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_53} :catch_112

    .line 576
    :goto_53
    const-wide/16 v0, 0x3e8

    :try_start_55
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_13

    .line 577
    :catch_59
    move-exception v0

    .line 578
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(InterruptedException|showDialogSerial):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 540
    :cond_7a
    sub-long/2addr v0, v4

    .line 542
    const-wide/16 v4, 0xe10

    :try_start_7d
    div-long v4, v0, v4

    .line 543
    const-wide/16 v6, 0xe10

    rem-long v6, v0, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    .line 544
    const-wide/16 v8, 0x3c

    rem-long v8, v0, v8

    .line 546
    const-string/jumbo v0, ""

    .line 547
    const-string/jumbo v0, ""

    .line 548
    cmp-long v0, v6, v10

    if-gez v0, :cond_e7

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 553
    :goto_a9
    cmp-long v0, v8, v10

    if-gez v0, :cond_fd

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 562
    goto/16 :goto_47

    .line 551
    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_a9

    .line 556
    :cond_fd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_110} :catch_112

    move-result-object v0

    goto :goto_c1

    .line 571
    :catch_112
    move-exception v0

    .line 572
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Exception|showDialogSerial):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    .line 581
    :cond_134
    return-void
.end method

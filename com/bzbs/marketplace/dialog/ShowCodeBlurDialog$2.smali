.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Landroid/widget/LinearLayout;

.field final synthetic g:Landroid/widget/ImageView;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 11

    .prologue
    .line 401
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->j:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->d:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->e:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->f:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->g:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->i:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0xa

    .line 404
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b:Z

    .line 406
    :goto_5
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_162

    sget-boolean v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b:Z

    if-nez v0, :cond_162

    .line 408
    :try_start_f
    const-string/jumbo v0, ""

    .line 412
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g()J

    move-result-wide v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 413
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 414
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 415
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 416
    cmp-long v4, v2, v0

    if-lez v4, :cond_78

    .line 417
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$1;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;->h:Ljava/lang/String;

    .line 431
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b:Z

    .line 463
    :goto_46
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2$2;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_52} :catch_141

    .line 473
    :goto_52
    const-wide/16 v0, 0x3e8

    :try_start_54
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5

    .line 474
    :catch_58
    move-exception v0

    .line 475
    const-string/jumbo v1, "DialogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(InterruptedException|showDialogSerial):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 433
    :cond_78
    sub-long/2addr v0, v2

    .line 435
    const-wide/16 v2, 0xe10

    :try_start_7b
    div-long v2, v0, v2

    .line 436
    const-wide/16 v4, 0xe10

    rem-long v4, v0, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 437
    const-wide/16 v6, 0x3c

    rem-long v6, v0, v6

    .line 439
    const-string/jumbo v0, ""

    .line 440
    const-string/jumbo v0, ""

    .line 441
    const-string/jumbo v0, ""

    .line 442
    cmp-long v0, v2, v8

    if-gez v0, :cond_100

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 447
    :goto_aa
    cmp-long v0, v4, v8

    if-gez v0, :cond_116

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 452
    :goto_c3
    cmp-long v0, v6, v8

    if-gez v0, :cond_12c

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46

    .line 445
    :cond_100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_aa

    .line 450
    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_c3

    .line 455
    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_13f} :catch_141

    move-result-object v0

    goto :goto_db

    .line 468
    :catch_141
    move-exception v0

    .line 469
    const-string/jumbo v1, "DialogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|showDialogSerial):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 478
    :cond_162
    return-void
.end method

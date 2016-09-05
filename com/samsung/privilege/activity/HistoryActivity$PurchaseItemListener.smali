.class public Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HistoryActivity.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity;

.field private b:Lcom/bzbs/bean/Purchasing;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    .registers 4

    .prologue
    .line 517
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 518
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->b:Lcom/bzbs/bean/Purchasing;

    .line 519
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->c:Z

    .line 520
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->b:Lcom/bzbs/bean/Purchasing;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Z
    .registers 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->c:Z

    return v0
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 614
    const-string/jumbo v0, ""

    .line 616
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 617
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_4a

    .line 622
    :goto_30
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 624
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 626
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 629
    :cond_49
    return-void

    .line 618
    :catch_4a
    move-exception v0

    .line 619
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 524
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 525
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getPurchaseItem|onComplete)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

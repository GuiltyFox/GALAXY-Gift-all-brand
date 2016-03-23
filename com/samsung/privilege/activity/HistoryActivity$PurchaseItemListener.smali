.class public Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PurchaseItemListener"
.end annotation


# instance fields
.field private isRefreshData:Z

.field private purchasing:Lcom/bzbs/bean/Purchasing;

.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryActivity;
    .param p2, "pPurchasing"    # Lcom/bzbs/bean/Purchasing;
    .param p3, "pIsRefreshData"    # Z

    .prologue
    .line 499
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->purchasing:Lcom/bzbs/bean/Purchasing;

    .line 501
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->isRefreshData:Z

    .line 502
    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->purchasing:Lcom/bzbs/bean/Purchasing;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->isRefreshData:Z

    return v0
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 600
    const-string/jumbo v1, ""

    .line 602
    .local v1, "response_text":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_4b

    .line 603
    .end local v1    # "response_text":Ljava/lang/String;
    .local v2, "response_text":Ljava/lang/String;
    :try_start_8
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_6a

    move-object v1, v2

    .line 608
    .end local v2    # "response_text":Ljava/lang/String;
    .restart local v1    # "response_text":Ljava/lang/String;
    :goto_31
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1200(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 610
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 612
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->isRefreshData:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a

    .line 613
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v4, 0x0

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->loadHistory(I)V
    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->access$000(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 615
    :cond_4a
    return-void

    .line 604
    :catch_4b
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4c
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 604
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "response_text":Ljava/lang/String;
    .restart local v2    # "response_text":Ljava/lang/String;
    :catch_6a
    move-exception v0

    move-object v1, v2

    .end local v2    # "response_text":Ljava/lang/String;
    .restart local v1    # "response_text":Ljava/lang/String;
    goto :goto_4c
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 506
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 507
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1300(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    return-void
.end method

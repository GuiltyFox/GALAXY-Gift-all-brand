.class Lcom/samsung/privilege/activity/CardsUsedActivity$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->loadCardDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 379
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 380
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 335
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 336
    .local v0, "response_text":Ljava/lang/String;
    sget-object v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(loadCardDetail|onComplete)response_code="

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

    .line 338
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

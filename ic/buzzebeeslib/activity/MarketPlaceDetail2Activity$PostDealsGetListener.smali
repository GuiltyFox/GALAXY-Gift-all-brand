.class public Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostDealsGetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1509
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 1509
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1551
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1552
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->onSuccess(ILjava/lang/String;)V

    .line 1553
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1513
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostDrawListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v1, "onComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " !isFinishing() "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_62

    .line 1517
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1518
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1520
    :cond_58
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1547
    :cond_62
    return-void

    .line 1515
    :cond_63
    const/4 v0, 0x1

    goto :goto_34
.end method

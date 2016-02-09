.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 814
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)V
    .registers 3

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 841
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V

    .line 842
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(DeleteReviewListener|onComplete)response={"

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 820
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_43

    .line 821
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 830
    :goto_38
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 836
    :cond_42
    return-void

    .line 827
    :cond_43
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const-string v1, "Error while delete!"

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_38
.end method

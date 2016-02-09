.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 2

    .prologue
    .line 941
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)V
    .registers 3

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 968
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V

    .line 969
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$9(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/lang/String;

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

    .line 946
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 947
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_43

    .line 948
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 957
    :goto_38
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 963
    :cond_42
    return-void

    .line 954
    :cond_43
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v1, "Error while delete!"

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_38
.end method

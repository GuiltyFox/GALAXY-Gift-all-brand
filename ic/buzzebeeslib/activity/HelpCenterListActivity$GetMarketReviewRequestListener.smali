.class Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketReviewRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 744
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 745
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->gLoadMore:Z

    .line 746
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Z
    .registers 2

    .prologue
    .line 742
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 754
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_44

    .line 756
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    new-instance v3, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_13} :catch_2a

    .line 793
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_13
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$2;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)V

    .line 798
    const-wide/16 v4, 0x3e8

    .line 793
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 800
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$8(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    .line 801
    return-void

    .line 786
    :catch_2a
    move-exception v0

    .line 787
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "buzzebees.MarketReview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetMarketReviewRequestListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 790
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_44
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_13
.end method

.class Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRequestHelpRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 548
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 549
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->gLoadMore:Z

    .line 550
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;)Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 558
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_44

    .line 560
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    new-instance v3, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_13} :catch_2a

    .line 597
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_13
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$2;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;)V

    .line 602
    const-wide/16 v4, 0x3e8

    .line 597
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$5(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V

    .line 605
    return-void

    .line 590
    :catch_2a
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RequestHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetMarketReviewRequestListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 594
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_44
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    goto :goto_13
.end method

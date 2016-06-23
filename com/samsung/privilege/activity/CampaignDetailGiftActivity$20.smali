.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doShare(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2317
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 2375
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 2
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 2380
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 11
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 2320
    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v3

    .line 2321
    .local v3, "post_id":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(doShare)post_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    if-eqz v3, :cond_2a

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2323
    :cond_2a
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2324
    .local v1, "dateNow":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 2325
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(doShare)post_id(time):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    .end local v1    # "dateNow":Ljava/util/Date;
    :cond_52
    if-eqz v3, :cond_cc

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cc

    .line 2328
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    .line 2329
    .local v5, "token":Lcom/facebook/AccessToken;
    if-eqz v5, :cond_cc

    .line 2330
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2331
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v6, "token"

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const-string/jumbo v6, "post_id"

    invoke-virtual {v2, v6, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    const-string/jumbo v6, "access_token"

    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "api/facebook/dialog/feed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2335
    .local v4, "strUrl":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(doShareReceivePoint)url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2337
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;)V

    invoke-virtual {v0, v6, v4, v2, v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2370
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "strUrl":Ljava/lang/String;
    .end local v5    # "token":Lcom/facebook/AccessToken;
    :cond_cc
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 2317
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method

.class Lcom/samsung/privilege/activity/MainPagerActivity$25;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->saveLanguageToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

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
    .line 1765
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$300(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1766
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1100(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 1767
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 1744
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 1745
    .local v2, "response_text":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(saveLanguageToServer|onComplete)response_code="

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

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$300(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1750
    :try_start_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v3, "Token"

    invoke-static {v0, v3}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1752
    .local v1, "newTokenBzBs":Ljava/lang/String;
    if-eqz v1, :cond_56

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1753
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/bzbs/data/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_56} :catch_5c

    .line 1759
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v1    # "newTokenBzBs":Ljava/lang/String;
    :cond_56
    :goto_56
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1100(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 1760
    return-void

    .line 1755
    :catch_5c
    move-exception v3

    goto :goto_56
.end method

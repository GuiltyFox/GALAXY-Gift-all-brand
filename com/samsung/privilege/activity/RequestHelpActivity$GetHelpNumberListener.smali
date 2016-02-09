.class Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHelpNumberListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 2

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)V
    .registers 3

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 481
    const-string v3, "RequestHelpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(GetHelpNumberListener|onComplete)response={"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_52

    .line 485
    :try_start_22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    new-instance v4, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_38

    .line 520
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_37
    return-void

    .line 504
    :catch_38
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RequestHelpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|GetHelpNumberListener|onComplete): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_52
    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    new-instance v4, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_37
.end method

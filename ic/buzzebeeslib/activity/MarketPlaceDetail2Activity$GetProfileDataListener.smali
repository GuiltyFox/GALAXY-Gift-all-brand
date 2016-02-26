.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 3097
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;)V
    .registers 3

    .prologue
    .line 3097
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 3097
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3136
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->onSuccess(ILjava/lang/String;)V

    .line 3137
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 3100
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response_code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " response_text : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 3103
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_3d

    .line 3104
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener$1;

    invoke-direct {v5, p0, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3131
    :cond_3c
    :goto_3c
    return-void

    .line 3122
    :cond_3d
    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3123
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3124
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v4, "message"

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3125
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_3c

    .line 3126
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "message":Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 3127
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v5, "Error while checking your profile data!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_3c
.end method

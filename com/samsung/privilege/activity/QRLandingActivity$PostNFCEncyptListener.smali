.class Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "QRLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/QRLandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostNFCEncyptListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/QRLandingActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V
    .registers 3

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->onSuccess(ILjava/lang/String;)V

    .line 375
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_c5

    .line 318
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(PostNFCEncyptListener|onComplete):response_code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",response_text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 321
    const-string v4, "NFC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response_code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",response_text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 325
    :cond_5a
    :try_start_5a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v5, Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {v5, v1}, Lcom/samsung/privilege/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$2(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 329
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    const v5, 0x7f090350

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v4, :cond_94

    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 331
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v2, v4, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 333
    :cond_94
    move-object v3, v2

    .line 335
    .local v3, "message_final":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c6

    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c6

    .line 336
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v5, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    :goto_bb
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v5, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$4;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$4;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :cond_c5
    :goto_c5
    return-void

    .line 342
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_c6
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_fe

    .line 343
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v5, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_df} :catch_e0

    goto :goto_bb

    .line 365
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :catch_e0
    move-exception v0

    .line 366
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(PostNFCEncyptListener|onComplete|JSONException):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    .line 349
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_fe
    :try_start_fe
    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v5, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_108
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_108} :catch_e0

    goto :goto_bb
.end method

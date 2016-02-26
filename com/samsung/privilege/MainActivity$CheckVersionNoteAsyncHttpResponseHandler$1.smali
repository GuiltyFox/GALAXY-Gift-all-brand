.class Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 426
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "request_otp"

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 429
    .local v1, "request_otp":Z
    if-eqz v1, :cond_1e

    .line 430
    iget-object v2, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v2}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/MainActivity;->doRequestOTP(Landroid/view/View;)V

    .line 437
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v1    # "request_otp":Z
    :goto_1d
    return-void

    .line 432
    .restart local v0    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v1    # "request_otp":Z
    :cond_1e
    iget-object v2, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v2}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/privilege/MainActivity;->doLoginDevice(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_1d

    .line 434
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v1    # "request_otp":Z
    :catch_2f
    move-exception v2

    goto :goto_1d
.end method

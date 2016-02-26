.class Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;
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
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;->this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;->val$response_text:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 444
    const-string v0, ""

    .line 445
    .local v0, "code":Ljava/lang/String;
    const-string v4, "Check version fail!"

    .line 447
    .local v4, "message":Ljava/lang/String;
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 449
    .local v2, "jsonError":Lorg/json/JSONObject;
    const-string v5, "message"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    const-string v5, "code"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_27

    move-result-object v0

    .line 455
    .end local v2    # "jsonError":Lorg/json/JSONObject;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :goto_1d
    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;->this$1:Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v5}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    return-void

    .line 451
    :catch_27
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Check version fail!"

    goto :goto_1d
.end method

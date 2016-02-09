.class public Lcom/samsung/privilege/bean/FBError;
.super Ljava/lang/Object;
.source "FBError.java"


# instance fields
.field public code:I

.field public is_error:Z

.field public message:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/FBError;->message:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/FBError;->type:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v4, p0, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    .line 13
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/privilege/bean/FBError;->message:Ljava/lang/String;

    .line 14
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/privilege/bean/FBError;->type:Ljava/lang/String;

    .line 24
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v3, "message"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/bean/FBError;->message:Ljava/lang/String;

    .line 27
    const-string v3, "type"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/bean/FBError;->type:Ljava/lang/String;

    .line 28
    const-string v3, "code"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/privilege/bean/FBError;->code:I

    .line 29
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/privilege/bean/FBError;->is_error:Z
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_34} :catch_35

    .line 33
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "json_error":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 30
    :catch_35
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    iput-boolean v4, p0, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    goto :goto_34
.end method

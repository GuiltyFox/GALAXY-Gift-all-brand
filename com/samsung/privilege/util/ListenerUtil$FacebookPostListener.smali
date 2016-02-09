.class public Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;
.super Lcom/facebook/android/BaseRequestListener;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/ListenerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookPostListener"
.end annotation


# instance fields
.field gActionName:Ljava/lang/String;

.field gActivityContext:Landroid/content/Context;

.field gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;
    .param p3, "pActionName"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/facebook/android/BaseRequestListener;-><init>()V

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActionName:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    .line 183
    iput-object p3, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActionName:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 187
    const-string v8, "ListenerUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(FacebookPostListener|onComplete)response="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/samsung/privilege/bean/FBError;

    invoke-direct {v1, p1}, Lcom/samsung/privilege/bean/FBError;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "error":Lcom/samsung/privilege/bean/FBError;
    iget-boolean v8, v1, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    if-nez v8, :cond_9f

    .line 191
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActionName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Status"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 192
    const-string v7, ""

    .line 194
    .local v7, "strNfc_status_success":Ljava/lang/String;
    :try_start_31
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    const v9, 0x7f0a0344

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_42

    move-result-object v7

    .line 198
    :goto_3a
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v8, v9, v7}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 229
    .end local v7    # "strNfc_status_success":Ljava/lang/String;
    :cond_41
    :goto_41
    return-void

    .line 195
    .restart local v7    # "strNfc_status_success":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ListenerUtil;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception := "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "strNfc_status_success":Ljava/lang/String;
    :cond_5e
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActionName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CheckIn"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 200
    const-string v6, ""

    .line 202
    .local v6, "strNfc_checkin_success":Ljava/lang/String;
    :try_start_72
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    const v9, 0x7f0a0345

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_83

    move-result-object v6

    .line 206
    :goto_7b
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v8, v9, v6}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_41

    .line 203
    :catch_83
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ListenerUtil;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception := "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "strNfc_checkin_success":Ljava/lang/String;
    :cond_9f
    const-string v5, ""

    .line 210
    .local v5, "strError":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 212
    const-string v5, "Error while posting to facebook:"

    .line 215
    :try_start_ab
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    .local v2, "jsonError":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_cc} :catch_de

    move-result-object v5

    .line 223
    .end local v2    # "jsonError":Lorg/json/JSONObject;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    :goto_cd
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 224
    iget-object v8, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v8, v9, v5}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_41

    .line 219
    :catch_de
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ListenerUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(FacebookPostListener|onComplete|JSONException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 234
    const-string v0, ""

    .line 235
    .local v0, "strError":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 236
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 238
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 242
    :cond_1d
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 247
    const-string v0, ""

    .line 248
    .local v0, "strError":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 249
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 251
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 255
    :cond_1d
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 260
    const-string v0, ""

    .line 261
    .local v0, "strError":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 262
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 264
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 268
    :cond_1d
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 273
    const-string v0, ""

    .line 274
    .local v0, "strError":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 275
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 277
    iget-object v1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 281
    :cond_1d
    return-void
.end method

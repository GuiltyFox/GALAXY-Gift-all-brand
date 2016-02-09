.class Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/ResumeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetResumeListener"
.end annotation


# instance fields
.field private gActivity:Landroid/app/Activity;

.field private gAppContext:Landroid/content/Context;

.field private gIsForceCall:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "isForceCall"    # Z

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    .line 201
    iput-boolean p3, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gIsForceCall:Z

    .line 202
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 206
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetResumeListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gIsForceCall:Z

    if-eqz v5, :cond_3d

    .line 209
    const-string v5, "RESUME"

    const-string v6, ""

    iget-object v7, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/AppSetting;->SaveLogOnSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 210
    const-string v5, "RESUME"

    const-string v6, "--------------------"

    iget-object v7, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/AppSetting;->SaveLogOnSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 211
    const-string v5, "RESUME"

    iget-object v6, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    invoke-static {v5, p2, v6}, Lcom/samsung/privilege/AppSetting;->SaveLogOnSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 216
    :cond_3d
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_de

    .line 218
    :try_start_41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "token"

    invoke-static {v1, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "token":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 221
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resume_token="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_67} :catch_df

    .line 227
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "token":Ljava/lang/String;
    :goto_67
    :try_start_67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "isPremiumUser"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    .line 229
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string v6, "isPremiumUser"

    invoke-static {v1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_83} :catch_fc

    .line 236
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    :cond_83
    :goto_83
    :try_start_83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 239
    .local v2, "json_version":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string v6, "allow_use"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/UserLogin;->SetIsAllowUse(Landroid/content/Context;Z)Z

    .line 240
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string v6, "has_new_version"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/UserLogin;->SetIsHasNewVersion(Landroid/content/Context;Z)Z

    .line 241
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string v6, "token_need_logout"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/UserLogin;->SetIsTokenNeedLogout(Landroid/content/Context;Z)Z

    .line 242
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string v6, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/UserLogin;->SetIsShowShoppingBasket(Landroid/content/Context;Z)Z

    .line 244
    const-string v5, "resume_message"

    invoke-static {v1, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "resume_message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    if-eqz v5, :cond_de

    .line 247
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    new-instance v6, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;

    invoke-direct {v6, p0, v3}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;-><init>(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_de} :catch_119

    .line 343
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_version":Lorg/json/JSONObject;
    .end local v3    # "resume_message":Ljava/lang/String;
    :cond_de
    :goto_de
    return-void

    .line 222
    :catch_df
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|GetResumeListener):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 231
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_fc
    move-exception v0

    .line 232
    .restart local v0    # "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|GetResumeListener):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 320
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_119
    move-exception v0

    .line 321
    .restart local v0    # "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    if-eqz v5, :cond_de

    .line 323
    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    new-instance v6, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;-><init>(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_de
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 348
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|GetResumeListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 354
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|GetResumeListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 360
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|GetResumeListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.class final Lcom/samsung/privilege/util/ResumeUtil$2;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(resume|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Z)Z

    .line 312
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 222
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(resume|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 228
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resume_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_52} :catch_e5

    .line 234
    :goto_52
    :try_start_52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "isPremiumUser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 236
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v2, "isPremiumUser"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_70} :catch_107

    .line 243
    :cond_70
    :goto_70
    :try_start_70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 246
    if-lez v0, :cond_8f

    .line 247
    const-string/jumbo v1, ""

    .line 248
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8f} :catch_129

    .line 255
    :cond_8f
    :goto_8f
    :try_start_8f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "allow_use"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 259
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "has_new_version"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 261
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z

    .line 263
    const-string/jumbo v1, "resume_message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    if-eqz v1, :cond_e0

    .line 266
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/privilege/util/ResumeUtil$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/util/ResumeUtil$2$1;-><init>(Lcom/samsung/privilege/util/ResumeUtil$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_e0} :catch_147

    .line 300
    :cond_e0
    :goto_e0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Z)Z

    .line 301
    return-void

    .line 229
    :catch_e5
    move-exception v0

    .line 230
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|GetResumeListener):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 238
    :catch_107
    move-exception v0

    .line 239
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|GetResumeListener):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 250
    :catch_129
    move-exception v0

    .line 251
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception|GetResumeListener= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 276
    :catch_147
    move-exception v0

    .line 277
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_e0

    .line 279
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/ResumeUtil$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/ResumeUtil$2$2;-><init>(Lcom/samsung/privilege/util/ResumeUtil$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_e0
.end method

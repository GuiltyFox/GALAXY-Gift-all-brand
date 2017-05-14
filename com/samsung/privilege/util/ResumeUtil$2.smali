.class final Lcom/samsung/privilege/util/ResumeUtil$2;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
    .registers 5

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->d:Z

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 328
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

    .line 330
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Z)Z

    .line 333
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 221
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

    .line 224
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 227
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
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_52} :catch_188

    .line 233
    :goto_52
    :try_start_52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "isPremiumUser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 235
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v2, "isPremiumUser"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_70} :catch_203

    .line 242
    :cond_70
    :goto_70
    :try_start_70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 245
    if-lez v0, :cond_97

    .line 246
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/os/Handler;

    if-eqz v1, :cond_97

    .line 247
    const-string/jumbo v1, ""

    .line 248
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_97} :catch_1aa

    .line 256
    :cond_97
    :goto_97
    :try_start_97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "allow_use"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 260
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "has_new_version"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 261
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "token_need_logout"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z

    .line 262
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Z)Z

    .line 263
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "is_enable_beacon"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Z)Z

    .line 264
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const-string/jumbo v3, "userlevel_show_otherpoint"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;J)Z

    .line 266
    const-string/jumbo v1, "resume_message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    if-eqz v1, :cond_114

    .line 269
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/privilege/util/ResumeUtil$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/util/ResumeUtil$2$1;-><init>(Lcom/samsung/privilege/util/ResumeUtil$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_114} :catch_1c8

    .line 304
    :cond_114
    :goto_114
    :try_start_114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;)J

    move-result-wide v2

    .line 306
    const-string/jumbo v1, "userLevel"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    .line 307
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oldUserLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newUserLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    cmp-long v2, v2, v0

    if-eqz v2, :cond_1f8

    .line 310
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 311
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ResumeEvents.onUserLevelChanged->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {v0, v1}, Lcom/bzbs/event/ResumeEvents;->a(J)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_183} :catch_201

    .line 321
    :cond_183
    :goto_183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Z)Z

    .line 322
    return-void

    .line 228
    :catch_188
    move-exception v0

    .line 229
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

    .line 251
    :catch_1aa
    move-exception v0

    .line 252
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

    goto/16 :goto_97

    .line 279
    :catch_1c8
    move-exception v0

    .line 280
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

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    if-eqz v0, :cond_114

    .line 282
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->b:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/ResumeUtil$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/ResumeUtil$2$2;-><init>(Lcom/samsung/privilege/util/ResumeUtil$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_114

    .line 314
    :cond_1f8
    :try_start_1f8
    iget-boolean v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2;->d:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_183

    .line 315
    invoke-static {v0, v1}, Lcom/bzbs/event/ResumeEvents;->a(J)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_200} :catch_201

    goto :goto_183

    .line 318
    :catch_201
    move-exception v0

    goto :goto_183

    .line 237
    :catch_203
    move-exception v0

    goto/16 :goto_70
.end method

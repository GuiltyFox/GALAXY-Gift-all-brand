.class final Lcom/samsung/privilege/util/SkipLoginUtil$3;
.super Ljava/lang/Object;
.source "SkipLoginUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/SkipLoginUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string/jumbo v2, "version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string/jumbo v3, "logon_message_id"

    invoke-static {v0, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string/jumbo v4, "logon_message"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    iget-object v5, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 129
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    .line 131
    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 152
    :goto_36
    if-eqz v4, :cond_67

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 153
    new-instance v0, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v1, "message"

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 154
    iput-object v3, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 155
    iput-object v4, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 158
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v1, :cond_f6

    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 159
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 171
    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;)V

    .line 175
    :goto_70
    return-void

    .line 134
    :cond_71
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z

    .line 138
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 139
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 142
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c8} :catch_f3

    .line 145
    :try_start_c8
    const-string/jumbo v1, "show_mygift_on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d8} :catch_da

    goto/16 :goto_36

    .line 147
    :catch_da
    move-exception v0

    goto/16 :goto_36

    .line 161
    :cond_dd
    :try_start_dd
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 164
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->c:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_67

    .line 172
    :catch_f3
    move-exception v0

    goto/16 :goto_70

    .line 167
    :cond_f6
    iget-object v1, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/SkipLoginUtil$3;->c:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_ff} :catch_f3

    goto/16 :goto_67
.end method

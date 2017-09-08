.class Lcom/samsung/privilege/util/DialogLoginGift$33$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$33;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$33;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$33;J)V
    .registers 4

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 2037
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2040
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2041
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_57

    .line 2046
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onFailure)response_code="

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

    .line 2048
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2050
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->X(Landroid/content/Context;)V

    .line 2051
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 2052
    return-void

    .line 2042
    :catch_57
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v5, 0x1

    .line 1983
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1984
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_eb

    .line 1989
    :goto_19
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onComplete)response_code="

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

    .line 1991
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1993
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1994
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1996
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1999
    :try_start_5b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2000
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2001
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 2002
    if-lez v1, :cond_80

    .line 2003
    const-string/jumbo v2, ""

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_80} :catch_e9

    .line 2010
    :cond_80
    :goto_80
    :try_start_80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2011
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2012
    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2013
    const/4 v0, 0x0

    :goto_94
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b8

    .line 2014
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2015
    new-instance v3, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v3, v2}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 2017
    new-instance v2, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v4, "badge"

    invoke-direct {v2, v4}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 2018
    iput-object v3, v2, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 2020
    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b4} :catch_b7

    .line 2013
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 2023
    :catch_b7
    move-exception v0

    .line 2027
    :cond_b8
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 2028
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->e:Ljava/lang/String;

    const-string/jumbo v1, "1"

    if-ne v0, v1, :cond_d4

    .line 2029
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$33;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2033
    :cond_d3
    :goto_d3
    return-void

    .line 2030
    :cond_d4
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->e:Ljava/lang/String;

    const-string/jumbo v1, "2"

    if-ne v0, v1, :cond_d3

    .line 2031
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$33;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d3

    .line 2005
    :catch_e9
    move-exception v0

    goto :goto_80

    .line 1985
    :catch_eb
    move-exception v0

    goto/16 :goto_19
.end method

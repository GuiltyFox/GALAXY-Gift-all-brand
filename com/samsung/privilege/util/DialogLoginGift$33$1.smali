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
    .line 1937
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1995
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1998
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1999
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_57

    .line 2004
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

    .line 2006
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2008
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->X(Landroid/content/Context;)V

    .line 2009
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 2010
    return-void

    .line 2000
    :catch_57
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v5, 0x1

    .line 1941
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1942
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_e3

    .line 1947
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

    .line 1949
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1951
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1952
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1954
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1957
    :try_start_5b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1958
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1959
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 1960
    if-lez v1, :cond_80

    .line 1961
    const-string/jumbo v2, ""

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_80} :catch_e1

    .line 1968
    :cond_80
    :goto_80
    :try_start_80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1969
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1970
    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1971
    const/4 v0, 0x0

    :goto_94
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b8

    .line 1972
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1973
    new-instance v3, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v3, v2}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 1975
    new-instance v2, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v4, "badge"

    invoke-direct {v2, v4}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1976
    iput-object v3, v2, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 1978
    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b4} :catch_b7

    .line 1971
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 1981
    :catch_b7
    move-exception v0

    .line 1985
    :cond_b8
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1986
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->e:Ljava/lang/String;

    const-string/jumbo v1, "1"

    if-ne v0, v1, :cond_d0

    .line 1987
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    .line 1991
    :cond_cf
    :goto_cf
    return-void

    .line 1988
    :cond_d0
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->e:Ljava/lang/String;

    const-string/jumbo v1, "2"

    if-ne v0, v1, :cond_cf

    .line 1989
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$33$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$33;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$33;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V

    goto :goto_cf

    .line 1963
    :catch_e1
    move-exception v0

    goto :goto_80

    .line 1943
    :catch_e3
    move-exception v0

    goto/16 :goto_19
.end method

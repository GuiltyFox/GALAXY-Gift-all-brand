.class Lcom/samsung/privilege/util/DialogLoginGift$34$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$34;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$34;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$34;J)V
    .registers 4

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1889
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1892
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1893
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_57

    .line 1898
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

    .line 1900
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1902
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->R(Landroid/content/Context;)V

    .line 1903
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1904
    return-void

    .line 1894
    :catch_57
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v5, 0x1

    .line 1836
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1837
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "Register"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_e9

    .line 1842
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

    .line 1844
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1846
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1847
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1849
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 1852
    :try_start_5b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1853
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1854
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 1855
    if-lez v1, :cond_80

    .line 1856
    const-string/jumbo v2, ""

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_80} :catch_e7

    .line 1863
    :cond_80
    :goto_80
    :try_start_80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1864
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1865
    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1866
    const/4 v0, 0x0

    :goto_94
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_be

    .line 1867
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1868
    new-instance v3, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v3, v2}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 1870
    new-instance v2, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v4, "badge"

    invoke-direct {v2, v4}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1871
    iput-object v3, v2, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 1873
    iget-object v2, v2, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$34;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_ba} :catch_bd

    .line 1866
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 1875
    :catch_bd
    move-exception v0

    .line 1879
    :cond_be
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Z)Z

    .line 1880
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->e:Ljava/lang/String;

    const-string/jumbo v1, "1"

    if-ne v0, v1, :cond_d6

    .line 1881
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    .line 1885
    :cond_d5
    :goto_d5
    return-void

    .line 1882
    :cond_d6
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->e:Ljava/lang/String;

    const-string/jumbo v1, "2"

    if-ne v0, v1, :cond_d5

    .line 1883
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V

    goto :goto_d5

    .line 1858
    :catch_e7
    move-exception v0

    goto :goto_80

    .line 1838
    :catch_e9
    move-exception v0

    goto/16 :goto_19
.end method

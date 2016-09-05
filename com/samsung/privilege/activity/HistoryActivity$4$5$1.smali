.class Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$4$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$5;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 309
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 312
    const-string/jumbo v2, "description"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v2, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v3, "point"

    invoke-direct {v2, v3}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 315
    iput-object v0, v2, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 316
    iput v1, v2, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 318
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_40

    .line 326
    :goto_35
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 328
    return-void

    .line 322
    :catch_40
    move-exception v0

    goto :goto_35
.end method

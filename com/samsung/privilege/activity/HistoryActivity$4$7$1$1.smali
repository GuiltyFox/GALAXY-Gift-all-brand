.class Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 392
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "PrivilegeMessage"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    const-string/jumbo v1, "Serial"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    const-string/jumbo v1, "ExpireIn"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    .line 406
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->a:Lcom/bzbs/bean/Purchasing;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 414
    :goto_2b
    return-void

    .line 409
    :catch_2c
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b
.end method

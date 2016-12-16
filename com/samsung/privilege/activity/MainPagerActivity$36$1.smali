.class Lcom/samsung/privilege/activity/MainPagerActivity$36$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$36;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity$36;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$36;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$36;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2304
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_category_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$36;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$36;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$36;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$36;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2305
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$36;

    iget-object v2, v2, Lcom/samsung/privilege/activity/MainPagerActivity$36;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2307
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$36;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 2311
    :goto_4e
    return-void

    .line 2308
    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

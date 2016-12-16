.class Lcom/samsung/privilege/activity/CardsUsedActivity$3;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 349
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 350
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 305
    sget-object v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(loadCardDetail|onComplete)response_code="

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

    .line 307
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

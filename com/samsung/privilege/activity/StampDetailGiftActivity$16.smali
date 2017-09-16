.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "StampDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 877
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 894
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 895
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampRenew|onFailure)response_code="

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

    .line 897
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$2;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 880
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampRenew|onComplete)response_code="

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

    .line 882
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 884
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 890
    return-void
.end method

.class Lcom/samsung/privilege/activity/MainPagerActivity$16$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$16;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$16;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$16;)V
    .registers 2

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1104
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1107
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(transfer_yes|onComplete)response_code="

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

    .line 1097
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v2, v2, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v3, 0x7f09028a

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 1100
    return-void
.end method

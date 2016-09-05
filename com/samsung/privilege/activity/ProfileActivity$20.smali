.class Lcom/samsung/privilege/activity/ProfileActivity$20;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->doUpdate(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1780
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

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

    .line 1784
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->c(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1786
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1787
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

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

    .line 1719
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->c(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1721
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->d(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$20$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/ProfileActivity$20$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$20;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1776
    return-void
.end method

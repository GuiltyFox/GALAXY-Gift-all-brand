.class Lcom/samsung/privilege/activity/LoginActivity$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity;)V
    .registers 2

    .prologue
    .line 577
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 665
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(GetProfileData|onFailure)response_code="

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

    .line 669
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "Get Profile Data Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(GetProfileData|onComplete)response_code="

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

    .line 582
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->d(Lcom/samsung/privilege/activity/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/LoginActivity$6$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/LoginActivity$6$1;-><init>(Lcom/samsung/privilege/activity/LoginActivity$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

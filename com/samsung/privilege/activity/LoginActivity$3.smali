.class Lcom/samsung/privilege/activity/LoginActivity$3;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity;->doLoginDevice(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity;)V
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLoginDevice|onFailure)response_code="

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

    .line 361
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->b(Lcom/samsung/privilege/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "Authentication with BuzzeBees Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLoginDevice|onComplete)response_code="

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

    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->b(Lcom/samsung/privilege/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 352
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$3;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "2"

    invoke-static {v0, p4, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

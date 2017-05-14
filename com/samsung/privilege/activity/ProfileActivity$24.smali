.class Lcom/samsung/privilege/activity/ProfileActivity$24;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1181
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->d(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getProfileData|onFailure)response_code="

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

    .line 1185
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->e(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1187
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->finish()V

    .line 1190
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->d(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getProfileData|onComplete)response_code="

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

    .line 1159
    :try_start_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->e(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_40

    .line 1164
    :goto_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$24$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/ProfileActivity$24$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$24;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1177
    return-void

    .line 1160
    :catch_40
    move-exception v0

    goto :goto_31
.end method

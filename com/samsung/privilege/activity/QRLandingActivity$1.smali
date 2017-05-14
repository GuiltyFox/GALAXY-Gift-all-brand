.class Lcom/samsung/privilege/activity/QRLandingActivity$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "QRLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/QRLandingActivity;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/QRLandingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 215
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getNFCData|onComplete)response_code="

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

    .line 165
    :try_start_28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v2, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v2, v0}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;

    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 175
    :cond_63
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_94

    .line 176
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v2, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    :goto_89
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$1$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$4;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    :goto_93
    return-void

    .line 182
    :cond_94
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d1

    .line 183
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_ad} :catch_ae

    goto :goto_89

    .line 205
    :catch_ae
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getNFCData|onComplete|JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 189
    :cond_d1
    :try_start_d1
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_db} :catch_ae

    goto :goto_89
.end method

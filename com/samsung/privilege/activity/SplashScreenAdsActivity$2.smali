.class Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "SplashScreenAdsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    .line 183
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->b(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    invoke-static {}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetDashboardListener|onComplete|response_code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | response_text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_106

    .line 143
    :try_start_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_dashboard_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_dashboard_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_ab} :catch_10e

    .line 149
    :goto_ab
    const/4 v0, 0x0

    .line 151
    :try_start_ac
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b4} :catch_10c

    move-result v0

    .line 157
    :goto_b5
    if-lez v0, :cond_100

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string/jumbo v1, "header_en"

    const-string/jumbo v2, "ADS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "header"

    const-string/jumbo v2, "ADS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "dashboard_json"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->finish()V

    .line 176
    :goto_ff
    return-void

    .line 171
    :cond_100
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    goto :goto_ff

    .line 174
    :cond_106
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    goto :goto_ff

    .line 153
    :catch_10c
    move-exception v1

    goto :goto_b5

    .line 145
    :catch_10e
    move-exception v0

    goto :goto_ab
.end method

.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;
.super Landroid/webkit/WebViewClient;
.source "WebViewSurveyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .prologue
    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 489
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v0, ""

    .line 493
    if-eqz p2, :cond_3e

    :try_start_20
    const-string/jumbo v1, "bzbs_return_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 494
    const-string/jumbo v1, "?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 495
    array-length v2, v1

    if-lez v2, :cond_3e

    .line 496
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_11d

    move-result-object v0

    .line 507
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cancel_url"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "return_url"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "return_url"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "?result=success"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    if-eqz p2, :cond_e3

    .line 514
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 515
    :cond_c5
    const-string/jumbo v1, "content://someURI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 516
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 517
    const-string/jumbo v1, "bzbs_return_url"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setResult(ILandroid/content/Intent;)V

    .line 519
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    .line 531
    :cond_e3
    :goto_e3
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_e5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    goto :goto_e3

    .line 522
    :cond_f9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    goto :goto_e3

    .line 499
    :catch_11d
    move-exception v1

    goto/16 :goto_3e
.end method

.class Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewCustomInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebResourceResponse:url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 179
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

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

    .line 181
    const-string/jumbo v0, ""

    .line 182
    if-eqz p2, :cond_41

    const-string/jumbo v1, "bzbs_return_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 183
    const-string/jumbo v1, "?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_41

    .line 185
    aget-object v0, v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_41
    const-string/jumbo v1, "/bzbs_cancel_url"

    .line 193
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "return_url"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "return_url"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?result=success"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    if-eqz p2, :cond_de

    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 199
    :cond_a9
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 201
    const-string/jumbo v1, "content://someURI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    const-string/jumbo v1, "bzbs_return_url"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    .line 207
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->b(Ljava/lang/String;)V

    .line 217
    :cond_de
    :goto_de
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_e0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 209
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_de

    .line 210
    :cond_f4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_de
.end method

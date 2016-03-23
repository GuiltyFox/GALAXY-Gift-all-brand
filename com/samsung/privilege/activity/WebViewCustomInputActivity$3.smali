.class Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewCustomInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->access$000(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 15
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 204
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->access$000(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, ""

    .line 207
    .local v1, "bzbs_return_url":Ljava/lang/String;
    if-eqz p2, :cond_3d

    const-string/jumbo v8, "bzbs_return_url"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 208
    const-string/jumbo v8, "?"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "strArrUrl":[Ljava/lang/String;
    aget-object v8, v3, v11

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .end local v3    # "strArrUrl":[Ljava/lang/String;
    :cond_3d
    const-string/jumbo v5, "/bzbs_cancel_url"

    .line 214
    .local v5, "url_cancel":Ljava/lang/String;
    const-string/jumbo v6, "/bzbs_return_url"

    .line 215
    .local v6, "url_return":Ljava/lang/String;
    const-string/jumbo v7, "/bzbs_buy_return_url"

    .line 217
    .local v7, "url_return2":Ljava/lang/String;
    if-eqz p2, :cond_93

    .line 219
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_64

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 220
    :cond_64
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    iget-object v10, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->access$100(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 222
    const-string/jumbo v8, "content://someURI"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 223
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "bzbs_return_url"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v2}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 226
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    .line 237
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_93
    :goto_93
    const/4 v8, 0x0

    return v8

    .line 228
    :cond_95
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 229
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_93

    .line 230
    :cond_a9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tg=new"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v8, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_93
.end method

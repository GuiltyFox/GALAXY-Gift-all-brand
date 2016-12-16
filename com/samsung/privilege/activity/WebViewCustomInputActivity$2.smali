.class Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;
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
    .line 170
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;->a:Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Oh no! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

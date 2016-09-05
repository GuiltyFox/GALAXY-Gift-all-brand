.class Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

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

    .line 83
    return-void
.end method

.class Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
.class Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;
.super Landroid/webkit/WebChromeClient;
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
    .line 71
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setProgress(I)V

    .line 76
    return-void
.end method

.class Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$2;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$2;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->setProgress(I)V

    .line 86
    return-void
.end method

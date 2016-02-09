.class Lic/buzzebeeslib/activity/WebViewBuyPointActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/WebViewBuyPointActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    .line 66
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->setProgress(I)V

    .line 71
    return-void
.end method

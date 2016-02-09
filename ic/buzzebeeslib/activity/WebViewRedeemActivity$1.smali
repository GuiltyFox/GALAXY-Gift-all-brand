.class Lic/buzzebeeslib/activity/WebViewRedeemActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    .line 60
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->setProgress(I)V

    .line 65
    return-void
.end method

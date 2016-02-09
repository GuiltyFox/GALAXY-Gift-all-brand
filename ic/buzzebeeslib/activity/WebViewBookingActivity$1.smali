.class Lic/buzzebeeslib/activity/WebViewBookingActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/WebViewBookingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/WebViewBookingActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/WebViewBookingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewBookingActivity;

    .line 40
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity$1;->this$0:Lic/buzzebeeslib/activity/WebViewBookingActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->setProgress(I)V

    .line 45
    return-void
.end method

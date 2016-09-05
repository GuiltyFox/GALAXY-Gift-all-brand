.class Lcom/samsung/privilege/activity/WebViewBookingActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBookingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewBookingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->setProgress(I)V

    .line 57
    return-void
.end method

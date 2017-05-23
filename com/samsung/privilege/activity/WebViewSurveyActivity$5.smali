.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;
.super Landroid/webkit/WebChromeClient;
.source "WebViewSurveyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 2

    .prologue
    .line 507
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setProgress(I)V

    .line 512
    return-void
.end method

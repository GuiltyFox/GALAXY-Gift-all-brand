.class Lcom/samsung/privilege/control/WebViewSurvey$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewSurvey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/WebViewSurvey;->a(Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/WebViewSurvey;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/WebViewSurvey;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/privilege/control/WebViewSurvey$1;->a:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .prologue
    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 119
    return-void
.end method

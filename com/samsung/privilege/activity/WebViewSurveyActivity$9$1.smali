.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;
.super Lcom/samsung/privilege/util/AddOnPermissions;
.source "WebViewSurveyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 635
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->c:Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/privilege/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    .prologue
    .line 638
    invoke-super {p0, p1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 639
    if-eqz p1, :cond_f

    .line 640
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 644
    :goto_e
    return-void

    .line 642
    :cond_f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9$1;->c:Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    goto :goto_e
.end method

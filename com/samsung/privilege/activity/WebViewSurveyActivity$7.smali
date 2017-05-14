.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;
.super Ljava/lang/Object;
.source "WebViewSurveyActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;


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
    .line 540
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 543
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void Callback() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

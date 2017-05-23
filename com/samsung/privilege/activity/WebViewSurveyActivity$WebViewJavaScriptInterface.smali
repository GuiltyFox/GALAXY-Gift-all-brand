.class public Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewSurveyActivity.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 665
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->b:Ljava/lang/Object;

    .line 667
    return-void
.end method


# virtual methods
.method public UploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 738
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "public void UploadImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v0, p3}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 744
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->openContextMenu(Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 746
    return-void
.end method

.method public clickItemRelate(D)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "public void clickItemRelate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public likeCampaign(DD)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 707
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "public void likeCampaign("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    cmpl-double v0, p1, v4

    if-nez v0, :cond_38

    cmpl-double v0, p3, v4

    if-nez v0, :cond_38

    .line 715
    :goto_37
    return-void

    .line 712
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    double-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z

    .line 713
    const-string/jumbo v0, "like"

    .line 714
    double-to-int v1, p1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_37
.end method

.method public nativeBack(Z)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "public void nativeBack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v0, p1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Z)Z

    .line 682
    return-void
.end method

.method public scancode()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void scancode() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    .line 674
    return-void
.end method

.method public shareFacebook()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void shareFacebook() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->shareFacebook()V

    .line 696
    return-void
.end method

.method public startSurvey()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 719
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void startSurvey() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public submitSurveySuccess(DD)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 726
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "public void submitSurveySuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    cmpl-double v0, p1, v4

    if-nez v0, :cond_38

    cmpl-double v0, p3, v4

    if-nez v0, :cond_38

    .line 734
    :goto_37
    return-void

    .line 731
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    double-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z

    .line 732
    const-string/jumbo v0, "survey"

    .line 733
    double-to-int v1, p1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_37
.end method

.method public viewRelateCampaign()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void viewRelateCampaign() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

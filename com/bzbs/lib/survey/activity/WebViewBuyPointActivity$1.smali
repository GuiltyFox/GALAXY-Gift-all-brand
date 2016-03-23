.class Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;
.super Ljava/lang/Object;
.source "WebViewBuyPointActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 55
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const-string/jumbo v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "bzbs_buy_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->finish()V

    .line 63
    return-void
.end method

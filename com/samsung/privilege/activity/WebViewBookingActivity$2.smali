.class Lcom/samsung/privilege/activity/WebViewBookingActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBookingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->access$0(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

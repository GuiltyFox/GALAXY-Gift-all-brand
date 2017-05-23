.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;
.super Lpl/aprilapps/easyphotopicker/DefaultCallback;
.source "WebViewSurveyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewSurveyActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Lpl/aprilapps/easyphotopicker/DefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 8

    .prologue
    const/4 v3, 0x2

    .line 322
    const/16 v0, 0x15

    if-eq p3, v0, :cond_9

    const/16 v0, 0xb

    if-ne p3, v0, :cond_39

    .line 323
    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    const-string/jumbo v1, "image-path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    :cond_39
    return-void
.end method

.method public a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 4

    .prologue
    .line 318
    return-void
.end method

.class public Lic/buzzebeeslib/activity/PhotoViewerActivity;
.super Landroid/app/Activity;
.source "PhotoViewerActivity.java"


# instance fields
.field private gPbLoading:Landroid/widget/ProgressBar;

.field private gProgressDialog:Landroid/app/ProgressDialog;

.field private mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

.field private paramImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    .line 18
    return-void
.end method

.method private InitialImage()V
    .registers 6

    .prologue
    .line 59
    new-instance v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_loading_white:I

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;-><init>(Landroid/content/Context;I)V

    .line 65
    .local v1, "photoTouchLoader":Lic/buzzebeeslib/util/image/PhotoTouchLoader;
    :try_start_b
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paramImage="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setAlpha(I)V

    .line 68
    iget-object v2, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->gPbLoading:Landroid/widget/ProgressBar;

    iput-object v2, v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 70
    iget-object v2, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1, v2, v3}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->DisplayImage(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_3a

    .line 74
    :goto_39
    return-void

    .line 71
    :catch_3a
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_39
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 54
    sget v0, Lic/buzzebeeslib/R$idMenuImage;->imageTouch:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput-object v0, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .line 55
    sget v0, Lic/buzzebeeslib/R$idMenuImage;->pbLoading:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->gPbLoading:Landroid/widget/ProgressBar;

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 30
    sget v0, Lic/buzzebeeslib/R$layout;->bz_photo_viewer:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->setContentView(I)V

    .line 32
    const-string v0, "Please wait..."

    const-string v1, "Retrieving data ..."

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    .line 34
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->initialParam()V

    .line 35
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->InitialImage()V

    .line 37
    iget-object v0, p0, Lic/buzzebeeslib/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 80
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 44
    return-void
.end method

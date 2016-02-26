.class public Lcom/samsung/privilege/activity/PhotoViewerActivity;
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
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    .line 20
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public InitialImage()V
    .registers 6

    .prologue
    .line 86
    new-instance v1, Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0203a7

    invoke-direct {v1, v2, v3}, Lcom/samsung/privilege/util/image/PhotoTouchLoader;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v1, "photoTouchLoader":Lcom/samsung/privilege/util/image/PhotoTouchLoader;
    :try_start_c
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paramImage="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setAlpha(I)V

    .line 95
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v3, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gPbLoading:Landroid/widget/ProgressBar;

    iput-object v2, v1, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 97
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->paramImage:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->DisplayImage(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3a} :catch_3b

    .line 101
    :goto_3a
    return-void

    .line 98
    :catch_3b
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3a
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 81
    const v0, 0x7f310001

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput-object v0, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .line 82
    const/high16 v0, 0x7f310000

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gPbLoading:Landroid/widget/ProgressBar;

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 32
    const v2, 0x7f03010b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->setContentView(I)V

    .line 34
    const-string v2, "Please wait..."

    const-string v3, "Retrieving data ..."

    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    .line 37
    :try_start_20
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "mMessageView":Landroid/widget/TextView;
    if-eqz v1, :cond_40

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 40
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_4c

    .line 46
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "mMessageView":Landroid/widget/TextView;
    :cond_40
    :goto_40
    invoke-direct {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->initialParam()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->InitialImage()V

    .line 49
    iget-object v2, p0, Lcom/samsung/privilege/activity/PhotoViewerActivity;->gProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 50
    return-void

    .line 42
    :catch_4c
    move-exception v2

    goto :goto_40
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

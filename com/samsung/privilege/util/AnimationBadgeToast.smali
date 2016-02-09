.class public Lcom/samsung/privilege/util/AnimationBadgeToast;
.super Ljava/lang/Object;
.source "AnimationBadgeToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesParam;,
        Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesTask;
    }
.end annotation


# static fields
.field public static objCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/AnimationBadgeToast;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static showDialogBadge(Landroid/content/Context;Lcom/samsung/privilege/bean/BadgeAlert;Landroid/graphics/Bitmap;)V
    .registers 19
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "pBadge"    # Lcom/samsung/privilege/bean/BadgeAlert;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    new-instance v2, Landroid/app/Dialog;

    const v13, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v2, "dialogBadge":Landroid/app/Dialog;
    const v13, 0x7f03011f

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 51
    const v13, 0x7f550009

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 52
    .local v6, "layoutMarketRoot":Landroid/widget/RelativeLayout;
    const v13, 0x7f550002

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 53
    .local v5, "ivBadge":Landroid/widget/ImageView;
    const v13, 0x7f550004

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 54
    .local v8, "tvBadgeName":Landroid/widget/TextView;
    const v13, 0x7f550003

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 55
    .local v7, "tvBadgeLevel":Landroid/widget/TextView;
    const v13, 0x7f550005

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    .local v12, "tvYouEarned":Landroid/widget/TextView;
    const v13, 0x7f55000a

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 57
    .local v10, "tvMarket":Landroid/widget/TextView;
    const v13, 0x7f550007

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 58
    .local v11, "tvPoint":Landroid/widget/TextView;
    const v13, 0x7f55000b

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 60
    .local v9, "tvClose":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 61
    .local v3, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/privilege/bean/BadgeAlert;->description:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v13, "###,###,###"

    invoke-direct {v4, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "formatter":Ljava/text/NumberFormat;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/privilege/bean/BadgeAlert;->points:I

    int-to-long v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_e7

    .line 78
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_c8
    new-instance v13, Lcom/samsung/privilege/util/AnimationBadgeToast$1;

    invoke-direct {v13, v2}, Lcom/samsung/privilege/util/AnimationBadgeToast$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 107
    .local v1, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v13, 0x11

    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 139
    return-void

    .line 80
    .end local v1    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    :cond_e7
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c8
.end method

.method public static showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7
    .param p0, "pBadge"    # Lcom/samsung/privilege/bean/BadgeAlert;
    .param p1, "pHandler"    # Landroid/os/Handler;
    .param p2, "pContext"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesParam;-><init>(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    .line 42
    .local v0, "objDownloadImagesParam":Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesParam;
    new-instance v1, Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesTask;

    invoke-direct {v1}, Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesParam;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/util/AnimationBadgeToast$DownloadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method

.method private static showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p0, "pBadge"    # Lcom/samsung/privilege/bean/BadgeAlert;
    .param p1, "pHandler"    # Landroid/os/Handler;
    .param p2, "pContext"    # Landroid/content/Context;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    new-instance v0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/privilege/util/AnimationBadgeToast$2;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/privilege/bean/BadgeAlert;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.class public Lcom/samsung/privilege/activity/DashboardFragmentNew;
.super Landroid/support/v4/app/Fragment;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;,
        Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_dashboard"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private booleanCancelRunnable:Z

.field private doRedeeming:Z

.field private gDashboardAdapter:Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gIsSendGA:Z

.field private gIsUpdateViewForUser:Z

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mLeak:Landroid/view/View;

.field private mScreenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 84
    const-string v0, "gift.dashboard.fragment.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->LOGCATLC:Ljava/lang/String;

    .line 85
    const-string v0, "gift.dashboard"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->LOGCAT:Ljava/lang/String;

    .line 87
    const-class v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/samsung/privilege/holder/DashboardNewHolder;

    invoke-direct {v0}, Lcom/samsung/privilege/holder/DashboardNewHolder;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 99
    const-string v0, "Hot Privilege"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    .line 113
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    .line 606
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 83
    return-void
.end method

.method private InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 25
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1315
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300c9

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1317
    .local v17, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1318
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1319
    .local v18, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    .end local v18    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1322
    const v2, 0x7f1c0003

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1323
    .local v16, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    .end local v16    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1327
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1329
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$4;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1344
    const v2, 0x7f1c0002

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1345
    .local v13, "tvCaption":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_182

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_182

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 1347
    .local v8, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1349
    invoke-virtual {v13}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1350
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    .end local v8    # "fontDefault":Landroid/graphics/Typeface;
    :goto_bf
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1b3

    .line 1357
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1358
    .local v11, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1359
    .local v14, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1360
    .local v15, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41700000

    add-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1363
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1366
    .local v10, "lastCode":Ljava/lang/String;
    if-eqz v10, :cond_1ad

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ad

    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1368
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v12, :cond_189

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_189

    .line 1369
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_157
    :goto_157
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1386
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :goto_15b
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$5;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_178

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1399
    :cond_178
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1401
    return-object v17

    .line 1353
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    :cond_182
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bf

    .line 1372
    .restart local v10    # "lastCode":Ljava/lang/String;
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v14    # "tvLastCode":Landroid/widget/TextView;
    .restart local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_189
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_157

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_157

    .line 1379
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1ad
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b

    .line 1382
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1b3
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1383
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b
.end method

.method private InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 27
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1406
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300ca

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1408
    .local v19, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1409
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1410
    .local v20, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    .end local v20    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1413
    const v2, 0x7f1c0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1414
    .local v18, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    .end local v18    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1418
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1419
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1421
    const v2, 0x7f1c0012

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1422
    .local v14, "tvLine1":Landroid/widget/TextView;
    const v2, 0x7f1c0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1423
    .local v15, "tvLine2":Landroid/widget/TextView;
    const v2, 0x7f1c0014

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1424
    .local v16, "tvLine3":Landroid/widget/TextView;
    const v2, 0x7f1c0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1426
    .local v17, "tvLine4":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1436
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1ff

    .line 1442
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1443
    .local v10, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1444
    .local v12, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1445
    .local v13, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41700000

    add-float/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1448
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1451
    .local v9, "lastCode":Ljava/lang/String;
    if-eqz v9, :cond_1f9

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f9

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1453
    .local v11, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v11, :cond_1d5

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 1454
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    :cond_1aa
    :goto_1aa
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1471
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :goto_1ae
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1cb

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1482
    :cond_1cb
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1484
    return-object v19

    .line 1457
    .restart local v9    # "lastCode":Ljava/lang/String;
    .restart local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v12    # "tvLastCode":Landroid/widget/TextView;
    .restart local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1d5
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1aa

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1aa

    .line 1464
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1f9
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae

    .line 1467
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1ff
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1468
    .restart local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae
.end method

.method private InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 1488
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1489
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cb

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1490
    .local v12, "viewDashboardItem":Landroid/view/View;
    const v2, 0x7f1c0004

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 1492
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_29

    .line 1493
    const/high16 v2, 0x7f1c0000

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1494
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_29
    if-eqz p3, :cond_36

    .line 1497
    const v2, 0x7f1c0003

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1498
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_36
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;

    invoke-direct {v3, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1515
    new-instance v9, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1516
    .local v9, "objDashboardItemPagerAdapter":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1518
    const v2, 0x7f1c0005

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1519
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$8;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$8;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1536
    const v2, 0x7f1c0006

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1537
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1554
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1555
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 1556
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1558
    return-object v12
.end method

.method private InitialDashboardItemCatHeader(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1252
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0300cc

    invoke-virtual {v7, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1254
    .local v10, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_20

    .line 1255
    const v0, 0x7f0c02fc

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1256
    .local v11, "viewTop":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    .end local v11    # "viewTop":Landroid/view/View;
    :cond_20
    if-eqz p5, :cond_2d

    .line 1259
    const v0, 0x7f0c02ff

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1260
    .local v9, "viewBottom":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    .end local v9    # "viewBottom":Landroid/view/View;
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 1264
    .local v6, "fontDefault":Landroid/graphics/Typeface;
    const v0, 0x7f0c02fe

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1265
    .local v8, "tvCatName":Landroid/widget/TextView;
    const/4 v0, 0x1

    invoke-virtual {v8, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1266
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1268
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_98

    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1269
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    :cond_74
    :goto_74
    const v0, 0x7f0c02fd

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1279
    .local v2, "imgCatIcon":Landroid/widget/ImageView;
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 1280
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0202cc

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1288
    :goto_97
    return-object v10

    .line 1270
    .end local v2    # "imgCatIcon":Landroid/widget/ImageView;
    :cond_98
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1054"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1272
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 1274
    :cond_bc
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 1281
    .restart local v2    # "imgCatIcon":Landroid/widget/ImageView;
    :cond_c2
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    if-eqz v0, :cond_fc

    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaigncat/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/picture"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    .local v1, "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v3, 0x0

    const v4, 0x7f0202cc

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto :goto_97

    .line 1285
    .end local v1    # "cat_img_url":Ljava/lang/String;
    :cond_fc
    const v0, 0x7f0202bb

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_97
.end method

.method private InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 25
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1591
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cd

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1593
    .local v17, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1594
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1595
    .local v18, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    .end local v18    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1598
    const v2, 0x7f1c0003

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1599
    .local v16, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    .end local v16    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1603
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1605
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1618
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1620
    const v2, 0x7f1c0002

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1621
    .local v13, "tvCaption":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_182

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_182

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 1623
    .local v8, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1625
    invoke-virtual {v13}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1626
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1627
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    .end local v8    # "fontDefault":Landroid/graphics/Typeface;
    :goto_bf
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1b3

    .line 1633
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1634
    .local v11, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1635
    .local v14, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1636
    .local v15, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41400000

    add-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1639
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    add-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1642
    .local v10, "lastCode":Ljava/lang/String;
    if-eqz v10, :cond_1ad

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ad

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1644
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v12, :cond_189

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_189

    .line 1645
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    :cond_157
    :goto_157
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1662
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :goto_15b
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$11;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1671
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_178

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1675
    :cond_178
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1677
    return-object v17

    .line 1629
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    :cond_182
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bf

    .line 1648
    .restart local v10    # "lastCode":Ljava/lang/String;
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v14    # "tvLastCode":Landroid/widget/TextView;
    .restart local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_189
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_157

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_157

    .line 1655
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1ad
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b

    .line 1658
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1b3
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1659
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b
.end method

.method private InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 27
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1682
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300ce

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1684
    .local v19, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1685
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1686
    .local v20, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    .end local v20    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1689
    const v2, 0x7f1c0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1690
    .local v18, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1693
    .end local v18    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1694
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1695
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1697
    const v2, 0x7f1c0012

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1698
    .local v14, "tvLine1":Landroid/widget/TextView;
    const v2, 0x7f1c0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1699
    .local v15, "tvLine2":Landroid/widget/TextView;
    const v2, 0x7f1c0014

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1700
    .local v16, "tvLine3":Landroid/widget/TextView;
    const v2, 0x7f1c0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1702
    .local v17, "tvLine4":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1712
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1713
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1ff

    .line 1718
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1719
    .local v10, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1720
    .local v12, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1721
    .local v13, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1723
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41400000

    add-float/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1724
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    add-float/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1727
    .local v9, "lastCode":Ljava/lang/String;
    if-eqz v9, :cond_1f9

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f9

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1729
    .local v11, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v11, :cond_1d5

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 1730
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1731
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :cond_1aa
    :goto_1aa
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1747
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :goto_1ae
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$12;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1754
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1cb

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1758
    :cond_1cb
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1760
    return-object v19

    .line 1733
    .restart local v9    # "lastCode":Ljava/lang/String;
    .restart local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v12    # "tvLastCode":Landroid/widget/TextView;
    .restart local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1d5
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1aa

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1aa

    .line 1740
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1f9
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae

    .line 1743
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1ff
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1744
    .restart local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae
.end method

.method private InitialDashboardItemMediumPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 1764
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1765
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cf

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1766
    .local v12, "viewDashboardItem":Landroid/view/View;
    const v2, 0x7f1c0004

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 1768
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_29

    .line 1769
    const/high16 v2, 0x7f1c0000

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1770
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_29
    if-eqz p3, :cond_36

    .line 1773
    const v2, 0x7f1c0003

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1774
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1777
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_36
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$13;

    invoke-direct {v3, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$13;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1791
    new-instance v9, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1792
    .local v9, "objDashboardItemPagerAdapter":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1794
    const v2, 0x7f1c0005

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1795
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$14;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$14;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    const v2, 0x7f1c0006

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1813
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$15;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$15;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1830
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1831
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 1832
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1834
    return-object v12
.end method

.method private InitialDashboardItemPremium(Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 15
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1102
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1103
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300d0

    invoke-virtual {v1, v7, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1105
    .local v5, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_20

    .line 1106
    const v7, 0x7f0c02fc

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1107
    .local v6, "viewTop":Landroid/view/View;
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    .end local v6    # "viewTop":Landroid/view/View;
    :cond_20
    if-eqz p4, :cond_2c

    .line 1110
    const v7, 0x7f0c02ff

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1111
    .local v4, "viewBottom":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    .end local v4    # "viewBottom":Landroid/view/View;
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1115
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    const v7, 0x7f0c0302

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1116
    .local v3, "tvJoin":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1117
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1119
    const v7, 0x7f0c0301

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1120
    .local v2, "layoutJoin":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    return-object v5
.end method

.method private InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 35
    .param p1, "dashboardItemA"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "dashboardItemB"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    .line 1838
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1839
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d1

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 1841
    .local v28, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_24

    .line 1842
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1843
    .local v29, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1845
    .end local v29    # "viewTop":Landroid/view/View;
    :cond_24
    if-eqz p4, :cond_35

    .line 1846
    const v2, 0x7f1c0003

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1847
    .local v27, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    .end local v27    # "viewBottom":Landroid/view/View;
    :cond_35
    const v2, 0x7f1c0007

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 1851
    .local v15, "layoutItemA":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c0008

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1852
    .local v4, "imgPhotoA":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1854
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v4, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1874
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1876
    const v2, 0x7f1c0009

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1877
    .local v21, "tvCaptionA":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_31a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31a

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1879
    .local v11, "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1881
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1882
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1883
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_d1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_355

    .line 1889
    const v2, 0x7f1c0016

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1890
    .local v17, "layoutLastCodeA":Landroid/widget/LinearLayout;
    const v2, 0x7f1c0017

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1891
    .local v23, "tvLastCodeA":Landroid/widget/TextView;
    const v2, 0x7f1c0018

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1892
    .local v25, "tvLastCodeDescA":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1895
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1896
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1898
    .local v13, "lastCodeA":Ljava/lang/String;
    if-eqz v13, :cond_34c

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34c

    .line 1899
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1900
    .local v19, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v19, :cond_323

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_323

    .line 1901
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1902
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    :cond_178
    :goto_178
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1918
    .end local v13    # "lastCodeA":Ljava/lang/String;
    .end local v19    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v23    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v25    # "tvLastCodeDescA":Landroid/widget/TextView;
    :goto_17e
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$17;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1926
    const v2, 0x7f1c000a

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1927
    .local v16, "layoutItemB":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c000b

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1929
    .local v7, "imgPhotoB":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1af

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1933
    :cond_1af
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1935
    if-eqz p2, :cond_3b8

    .line 1936
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x7f0203a7

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1938
    invoke-virtual {v7}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v7, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$18;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1960
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1962
    const v2, 0x7f1c000c

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1963
    .local v22, "tvCaptionB":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_369

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_369

    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1965
    .restart local v11    # "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1967
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1968
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1969
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1974
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_240
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_3a4

    .line 1975
    const v2, 0x7f1c0019

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1976
    .local v18, "layoutLastCodeB":Landroid/widget/LinearLayout;
    const v2, 0x7f1c001a

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1977
    .local v24, "tvLastCodeB":Landroid/widget/TextView;
    const v2, 0x7f1c001b

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1978
    .local v26, "tvLastCodeDescB":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1980
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1981
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1982
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1984
    .local v14, "lastCodeB":Ljava/lang/String;
    if-eqz v14, :cond_39b

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39b

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1986
    .local v20, "strPrivilegeMessageB":Ljava/lang/String;
    if-eqz v20, :cond_372

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_372

    .line 1987
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1988
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    :cond_2e7
    :goto_2e7
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2004
    .end local v14    # "lastCodeB":Ljava/lang/String;
    .end local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    .end local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :goto_2ed
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$19;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2012
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2014
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_310

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2018
    :cond_310
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2023
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v22    # "tvCaptionB":Landroid/widget/TextView;
    :goto_319
    return-object v28

    .line 1885
    .end local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .end local v16    # "layoutItemB":Landroid/widget/RelativeLayout;
    .end local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    :cond_31a
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d1

    .line 1904
    .restart local v13    # "lastCodeA":Ljava/lang/String;
    .restart local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .restart local v19    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v23    # "tvLastCodeA":Landroid/widget/TextView;
    .restart local v25    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_323
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_178

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_178

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_178

    .line 1911
    .end local v19    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_34c
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_17e

    .line 1914
    .end local v13    # "lastCodeA":Ljava/lang/String;
    .end local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .end local v23    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v25    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_355
    const v2, 0x7f1c0016

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1915
    .restart local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_17e

    .line 1971
    .restart local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .restart local v16    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v22    # "tvCaptionB":Landroid/widget/TextView;
    :cond_369
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_240

    .line 1990
    .restart local v14    # "lastCodeB":Ljava/lang/String;
    .restart local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .restart local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    .restart local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .restart local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_372
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_2e7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e7

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e7

    .line 1997
    .end local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    :cond_39b
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2ed

    .line 2000
    .end local v14    # "lastCodeB":Ljava/lang/String;
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_3a4
    const v2, 0x7f1c0019

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 2001
    .restart local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2ed

    .line 2020
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v22    # "tvCaptionB":Landroid/widget/TextView;
    :cond_3b8
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_319
.end method

.method private InitialDashboardItemSmallAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 40
    .param p1, "dashboardItemA"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "dashboardItemB"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    .line 2027
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 2028
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 2030
    .local v33, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_24

    .line 2031
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 2032
    .local v34, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    .end local v34    # "viewTop":Landroid/view/View;
    :cond_24
    if-eqz p4, :cond_35

    .line 2035
    const v2, 0x7f1c0003

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 2036
    .local v32, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    .end local v32    # "viewBottom":Landroid/view/View;
    :cond_35
    const v2, 0x7f1c0007

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 2040
    .local v14, "layoutItemA":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c0008

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2041
    .local v4, "imgPhotoA":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2042
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2044
    const v2, 0x7f1c001d

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 2045
    .local v24, "tvLine1A":Landroid/widget/TextView;
    const v2, 0x7f1c001e

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 2046
    .local v26, "tvLine2A":Landroid/widget/TextView;
    const v2, 0x7f1c001f

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 2047
    .local v28, "tvLine3A":Landroid/widget/TextView;
    const v2, 0x7f1c0020

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 2049
    .local v30, "tvLine4A":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2051
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2059
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2062
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_3f2

    .line 2065
    const v2, 0x7f1c0016

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2066
    .local v16, "layoutLastCodeA":Landroid/widget/LinearLayout;
    const v2, 0x7f1c0017

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2067
    .local v20, "tvLastCodeA":Landroid/widget/TextView;
    const v2, 0x7f1c0018

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 2068
    .local v22, "tvLastCodeDescA":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2071
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 2072
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2073
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2074
    .local v12, "lastCodeA":Ljava/lang/String;
    if-eqz v12, :cond_3e9

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e9

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2076
    .local v18, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v18, :cond_3c0

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c0

    .line 2077
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2078
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    :cond_1cd
    :goto_1cd
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2094
    .end local v12    # "lastCodeA":Ljava/lang/String;
    .end local v18    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v20    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v22    # "tvLastCodeDescA":Landroid/widget/TextView;
    :goto_1d3
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$20;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2101
    const v2, 0x7f1c000a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 2102
    .local v15, "layoutItemB":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c000b

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2104
    .local v7, "imgPhotoB":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_204

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2108
    :cond_204
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2110
    if-eqz p2, :cond_44c

    .line 2111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x7f0203a7

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2112
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2114
    const v2, 0x7f1c0022

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 2115
    .local v25, "tvLine1B":Landroid/widget/TextView;
    const v2, 0x7f1c0023

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2116
    .local v27, "tvLine2B":Landroid/widget/TextView;
    const v2, 0x7f1c0024

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 2117
    .local v29, "tvLine3B":Landroid/widget/TextView;
    const v2, 0x7f1c0025

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 2119
    .local v31, "tvLine4B":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2124
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2127
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2129
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2134
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_438

    .line 2135
    const v2, 0x7f1c0019

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2136
    .local v17, "layoutLastCodeB":Landroid/widget/LinearLayout;
    const v2, 0x7f1c001a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2137
    .local v21, "tvLastCodeB":Landroid/widget/TextView;
    const v2, 0x7f1c001b

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2138
    .local v23, "tvLastCodeDescB":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2141
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2144
    .local v13, "lastCodeB":Ljava/lang/String;
    if-eqz v13, :cond_42f

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42f

    .line 2145
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2146
    .local v19, "strPrivilegeMessageB":Ljava/lang/String;
    if-eqz v19, :cond_406

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_406

    .line 2147
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2148
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    :cond_391
    :goto_391
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2164
    .end local v13    # "lastCodeB":Ljava/lang/String;
    .end local v19    # "strPrivilegeMessageB":Ljava/lang/String;
    .end local v21    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v23    # "tvLastCodeDescB":Landroid/widget/TextView;
    :goto_397
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$21;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2171
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2173
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_3b6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2177
    :cond_3b6
    const-string v2, "View"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2182
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v25    # "tvLine1B":Landroid/widget/TextView;
    .end local v27    # "tvLine2B":Landroid/widget/TextView;
    .end local v29    # "tvLine3B":Landroid/widget/TextView;
    .end local v31    # "tvLine4B":Landroid/widget/TextView;
    :goto_3bf
    return-object v33

    .line 2080
    .end local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .end local v15    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v12    # "lastCodeA":Ljava/lang/String;
    .restart local v18    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v20    # "tvLastCodeA":Landroid/widget/TextView;
    .restart local v22    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_3c0
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1cd

    .line 2087
    .end local v18    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_3e9
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 2090
    .end local v12    # "lastCodeA":Ljava/lang/String;
    .end local v16    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .end local v20    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v22    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_3f2
    const v2, 0x7f1c0016

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2091
    .restart local v16    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 2150
    .restart local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .restart local v13    # "lastCodeB":Ljava/lang/String;
    .restart local v15    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .restart local v19    # "strPrivilegeMessageB":Ljava/lang/String;
    .restart local v21    # "tvLastCodeB":Landroid/widget/TextView;
    .restart local v23    # "tvLastCodeDescB":Landroid/widget/TextView;
    .restart local v25    # "tvLine1B":Landroid/widget/TextView;
    .restart local v27    # "tvLine2B":Landroid/widget/TextView;
    .restart local v29    # "tvLine3B":Landroid/widget/TextView;
    .restart local v31    # "tvLine4B":Landroid/widget/TextView;
    :cond_406
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2151
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_391

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_391

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_391

    .line 2157
    .end local v19    # "strPrivilegeMessageB":Ljava/lang/String;
    :cond_42f
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_397

    .line 2160
    .end local v13    # "lastCodeB":Ljava/lang/String;
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v21    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v23    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_438
    const v2, 0x7f1c0019

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2161
    .restart local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_397

    .line 2179
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v25    # "tvLine1B":Landroid/widget/TextView;
    .end local v27    # "tvLine2B":Landroid/widget/TextView;
    .end local v29    # "tvLine3B":Landroid/widget/TextView;
    .end local v31    # "tvLine4B":Landroid/widget/TextView;
    :cond_44c
    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3bf
.end method

.method private InitialDashboardItemWebview(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 15
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1036
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1037
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 1042
    .local v2, "viewDashboardItem":Landroid/view/View;
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    const-string v6, "medium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1043
    const v5, 0x7f0300d5

    invoke-virtual {v0, v5, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1050
    :goto_20
    if-eqz p4, :cond_2c

    .line 1051
    const v5, 0x7f0c02fc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1052
    .local v3, "viewTop":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    .end local v3    # "viewTop":Landroid/view/View;
    :cond_2c
    if-eqz p5, :cond_38

    .line 1055
    const v5, 0x7f0c02ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1056
    .local v1, "viewBottom":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    .end local v1    # "viewBottom":Landroid/view/View;
    :cond_38
    const v5, 0x7f0c0304

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 1061
    .local v4, "webview1":Landroid/webkit/WebView;
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1065
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_autoresize:Z

    if-nez v5, :cond_58

    .line 1066
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1067
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1073
    :cond_58
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_clearcache:Z

    if-nez v5, :cond_62

    .line 1074
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1075
    invoke-virtual {v4}, Landroid/webkit/WebView;->clearHistory()V

    .line 1078
    :cond_62
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript:Z

    if-nez v5, :cond_6d

    .line 1079
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1082
    :cond_6d
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript_cowa:Z

    if-nez v5, :cond_78

    .line 1083
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1086
    :cond_78
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_scrollbar:Z

    if-nez v5, :cond_8a

    .line 1087
    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1088
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 1089
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1090
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1093
    :cond_8a
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_zoom:Z

    if-nez v5, :cond_9c

    .line 1094
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1095
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 1098
    :cond_9c
    return-object v2

    .line 1044
    .end local v4    # "webview1":Landroid/webkit/WebView;
    :cond_9d
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 1045
    const v5, 0x7f0300d4

    invoke-virtual {v0, v5, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1046
    goto/16 :goto_20

    .line 1047
    :cond_b0
    const v5, 0x7f0300d3

    invoke-virtual {v0, v5, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_20
.end method

.method private InitialDashboardItems(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_8

    .line 1033
    return-void

    .line 968
    :cond_8
    :try_start_8
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/DashboardItem;

    .line 970
    .local v1, "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    const/4 v4, 0x0

    .line 971
    .local v4, "is_top":Z
    const/4 v5, 0x0

    .line 972
    .local v5, "is_bottom":Z
    if-nez v10, :cond_34

    .line 973
    const/4 v4, 0x1

    .line 975
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 976
    .local v6, "arguments":Landroid/os/Bundle;
    const-string v0, "category_code"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 977
    .local v7, "categoryCode":Ljava/lang/String;
    sget v0, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 978
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 979
    const/4 v4, 0x0

    .line 983
    .end local v6    # "arguments":Landroid/os/Bundle;
    .end local v7    # "categoryCode":Ljava/lang/String;
    :cond_34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_3d

    const/4 v5, 0x1

    .line 985
    :cond_3d
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "cat_header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 986
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemCatHeader(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 966
    .end local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v4    # "is_top":Z
    .end local v5    # "is_bottom":Z
    :goto_55
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 987
    .restart local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .restart local v4    # "is_top":Z
    .restart local v5    # "is_bottom":Z
    :cond_58
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 988
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemWebview(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_71

    goto :goto_55

    .line 1029
    .end local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v4    # "is_top":Z
    .end local v5    # "is_bottom":Z
    :catch_71
    move-exception v9

    .line 1030
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "gift.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processJsonDashboard:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 990
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .restart local v4    # "is_top":Z
    .restart local v5    # "is_bottom":Z
    :cond_8b
    :try_start_8b
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 991
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/DashboardItem;

    .line 992
    .local v8, "dashboardItemNext":Lcom/samsung/privilege/bean/DashboardItem;
    iget-object v0, v8, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, v8, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "cat_header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, v8, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 993
    add-int/lit8 v10, v10, 0x1

    .line 994
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 995
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v8, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmallAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 997
    :cond_dc
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v8, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1000
    :cond_e9
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1002
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1004
    :cond_103
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1007
    .end local v8    # "dashboardItemNext":Lcom/samsung/privilege/bean/DashboardItem;
    :cond_111
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1008
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1009
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1011
    :cond_13a
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 1012
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1014
    :cond_154
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1018
    :cond_164
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1019
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1021
    :cond_17f
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1022
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1024
    :cond_199
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_1a7} :catch_71

    goto/16 :goto_55
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2626
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getLastRedeemCode(Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V
    .registers 2

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1680
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1589
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1404
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1313
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 2185
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 2437
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonPremium(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V
    .registers 2

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 1

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V

    return-void
.end method

.method private bindingEvent()V
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 584
    return-void
.end method

.method private doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 14
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2438
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    if-eqz v7, :cond_e

    .line 2439
    const-string v7, "gift.dashboard"

    const-string v8, "if (doRedeeming == true) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    :cond_d
    :goto_d
    return-void

    .line 2441
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2442
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_d

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2443
    iput-boolean v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    .line 2451
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2452
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2455
    .local v0, "carrier":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/redeem?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&carrier="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2456
    .local v6, "url":Ljava/lang/String;
    const-string v7, "gift.dashboard"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(doRedeem)url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 2458
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2459
    .local v1, "date":Ljava/util/Date;
    const-string v7, "REDEEM"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}<br>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2460
    const-string v7, "REDEEM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "</font><br>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2463
    .end local v1    # "date":Ljava/util/Date;
    :cond_cf
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, ""

    const v9, 0x7f09018d

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    .line 2466
    :try_start_e2
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2467
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_ff

    .line 2468
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2469
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ff} :catch_10e

    .line 2475
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_ff
    :goto_ff
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2476
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v7, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    invoke-direct {v7, p0, p1, v10, v11}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;ZZ)V

    invoke-static {v6, v4, v7}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_d

    .line 2471
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    :catch_10e
    move-exception v7

    goto :goto_ff
.end method

.method private getDashboardKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 675
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "category_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "categoryCode":Ljava/lang/String;
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 677
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_SHOPPING_THAI:Ljava/lang/String;

    .line 679
    :cond_20
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 680
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_PRIMETIME_THAI:Ljava/lang/String;

    .line 682
    :cond_2e
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 683
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_PREMIUM_THAI:Ljava/lang/String;

    .line 685
    :cond_3c
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 686
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_SPARE_THAI:Ljava/lang/String;

    .line 689
    :cond_4a
    return-object v2
.end method

.method private getLastRedeemCode(Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    .registers 7
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "error_message"    # Ljava/lang/String;

    .prologue
    .line 2627
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/redeem?campaignId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=list2&mode=all&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    .local v0, "url":Ljava/lang/String;
    const-string v1, "gift.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(getLastRedeemCode)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2630
    return-void
.end method

.method private handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 25
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;

    .prologue
    .line 2186
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    if-nez v19, :cond_7

    .line 2435
    :cond_6
    :goto_6
    return-void

    .line 2190
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2194
    :cond_1a
    const-string v19, "Click"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2197
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "campaign"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ab

    .line 2198
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14b

    .line 2199
    const/4 v10, 0x1

    .line 2200
    .local v10, "flowRedeem":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2201
    .local v14, "lastCode":Ljava/lang/String;
    if-eqz v14, :cond_e7

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e7

    .line 2202
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e5

    .line 2203
    const/4 v10, 0x0

    .line 2211
    :goto_75
    if-eqz v10, :cond_e9

    .line 2212
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2213
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f09001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2214
    const v19, 0x7f090306

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f09035a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/samsung/privilege/activity/DashboardFragmentNew$22;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$22;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 2220
    const v20, 0x7f090359

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2230
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2231
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 2205
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_e5
    const/4 v10, 0x1

    .line 2207
    goto :goto_75

    .line 2208
    :cond_e7
    const/4 v10, 0x1

    goto :goto_75

    .line 2234
    :cond_e9
    :try_start_e9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-string v20, "clipboard"

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    .line 2235
    .local v7, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v7, v14}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2237
    const-string v19, "Your discount code is already in clipboard."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_101} :catch_5ef

    .line 2242
    .end local v7    # "clipboard":Landroid/content/ClipboardManager;
    :goto_101
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2243
    .local v12, "intent":Landroid/content/Intent;
    const-string v19, "url"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    const-string v19, "serial"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    const-string v19, "enable_webview_back"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2246
    const-string v19, "hide_serial"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2247
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 2261
    .end local v10    # "flowRedeem":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "lastCode":Ljava/lang/String;
    :cond_14b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "premium"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_182

    .line 2262
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2263
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2265
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2267
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_182
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2268
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2270
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2275
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1ab
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_campaign"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f1

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2289
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2290
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2292
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2295
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1f1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_campaign_ads"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_237

    .line 2296
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2309
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2310
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2312
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2315
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_237
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "cat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_258

    .line 2316
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->switchPagerByCat(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2319
    :cond_258
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2321
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "link"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_298

    .line 2322
    new-instance v15, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2323
    .local v15, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2326
    .end local v15    # "openUrlIntent":Landroid/content/Intent;
    :cond_298
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "openapp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3cc

    .line 2328
    :try_start_2aa
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2bb} :catch_2ef

    move-result-object v3

    .line 2331
    .local v3, "LaunchApp":Landroid/content/Intent;
    :try_start_2bc
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2e8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2e8

    .line 2332
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2333
    .local v16, "params":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2df
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2e4} :catch_5ec

    move/from16 v0, v19

    if-lt v11, v0, :cond_343

    .line 2366
    .end local v11    # "i":I
    .end local v16    # "params":[Ljava/lang/String;
    :cond_2e8
    :goto_2e8
    :try_start_2e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_2ed} :catch_2ef

    goto/16 :goto_6

    .line 2367
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    :catch_2ef
    move-exception v9

    .line 2369
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2f0
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "market://details?id="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V
    :try_end_317
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f0 .. :try_end_317} :catch_319

    goto/16 :goto_6

    .line 2370
    :catch_319
    move-exception v5

    .line 2371
    .local v5, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "http://play.google.com/store/apps/details?id="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2335
    .end local v5    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v3    # "LaunchApp":Landroid/content/Intent;
    .restart local v11    # "i":I
    .restart local v16    # "params":[Ljava/lang/String;
    :cond_343
    :try_start_343
    aget-object v19, v16, v11

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2336
    .local v8, "datas":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2337
    .local v13, "key":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 2338
    .local v18, "value":Ljava/lang/String;
    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3c6

    .line 2339
    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2340
    .local v17, "temps":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<int"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_386

    .line 2341
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2333
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "temps":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :goto_382
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2df

    .line 2343
    .restart local v8    # "datas":[Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v17    # "temps":[Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_386
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<double"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a2

    .line 2344
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_382

    .line 2357
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "temps":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :catch_3a0
    move-exception v19

    goto :goto_382

    .line 2346
    .restart local v8    # "datas":[Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v17    # "temps":[Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_3a2
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<boolean"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3bc

    .line 2347
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_382

    .line 2350
    :cond_3bc
    const/16 v19, 0x1

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_382

    .line 2354
    .end local v17    # "temps":[Ljava/lang/String;
    :cond_3c6
    move-object/from16 v0, v18

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_343 .. :try_end_3cb} :catch_3a0

    goto :goto_382

    .line 2376
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "params":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_3cc
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_market"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_403

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2380
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2381
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2384
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_403
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_market_cate"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_427

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_cat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_45b

    .line 2385
    :cond_427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2388
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2389
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "cat"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2390
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2393
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_45b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_dashboard"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_492

    .line 2394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2396
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/DashboardActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2397
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2400
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "menu"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2402
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "newsfeeds"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2404
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "activities"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2406
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "friends"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4f4

    .line 2407
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/FriendsFragmentActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2408
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2409
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4f4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_fanpage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2411
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "badges"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2413
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "marketplace"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2415
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "checkins"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2417
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "my_profile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_568

    .line 2418
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2419
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2420
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_568
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "qr_code"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_594

    .line 2421
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/QRLandingActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2422
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2423
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_594
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "inapps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5c0

    .line 2424
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/MiscFragmentActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2425
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2426
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_5c0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "about_us"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2427
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/AboutUsActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2428
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2362
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v3    # "LaunchApp":Landroid/content/Intent;
    :catch_5ec
    move-exception v19

    goto/16 :goto_2e8

    .line 2238
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    .restart local v10    # "flowRedeem":Z
    .restart local v14    # "lastCode":Ljava/lang/String;
    :catch_5ef
    move-exception v19

    goto/16 :goto_101
.end method

.method private initScreenSize()V
    .registers 3

    .prologue
    .line 551
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 552
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 553
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/samsung/privilege/AppSetting;->dpi:I

    .line 554
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    .line 555
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/samsung/privilege/AppSetting;->screenHeight:I

    .line 556
    return-void
.end method

.method private loadDashboard(Z)V
    .registers 10
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_105

    .line 723
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v5, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_14

    .line 724
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v5, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 727
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/main/dashboard?app_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 729
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v5, "category_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "categoryCode":Ljava/lang/String;
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/dashboard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    :cond_64
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/dashboard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 736
    :cond_8d
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/dashboard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    :cond_b6
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/dashboard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 743
    :cond_df
    const-string v5, "gift.dashboard"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dashboard_load= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 745
    .local v2, "startTime":J
    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    invoke-direct {v6, p0, p1, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;ZJ)V

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 747
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "categoryCode":Ljava/lang/String;
    .end local v2    # "startTime":J
    .end local v4    # "url":Ljava/lang/String;
    :cond_105
    return-void
.end method

.method private loadDashboardFromCatch()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 693
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v7, v7, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dashboard_key_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "catch_dashboard_items":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ee

    .line 697
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 700
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v7, "category_code"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "categoryCode":Ljava/lang/String;
    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 702
    const-string v7, "dashboard_premium"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "catch_premium":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 704
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonPremium(Ljava/lang/String;)V

    .line 712
    .end local v2    # "catch_premium":Ljava/lang/String;
    :cond_59
    :goto_59
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dashboard_key_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/helper/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 713
    .local v4, "times_sec":J
    const-wide/16 v8, 0xe10

    cmp-long v7, v4, v8

    if-lez v7, :cond_7d

    .line 714
    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V

    .line 719
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v3    # "categoryCode":Ljava/lang/String;
    .end local v4    # "times_sec":J
    :cond_7d
    :goto_7d
    return-void

    .line 706
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "catch_premium":Ljava/lang/String;
    .restart local v3    # "categoryCode":Ljava/lang/String;
    :cond_7e
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/campaign?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&format=json&type=list2&sponsorId=-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&sortby=cat&type=dashboard&cat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&device_app_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "url":Ljava/lang/String;
    const-string v7, "gift.dashboard"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "premium_load= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_59

    .line 717
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "catch_premium":Ljava/lang/String;
    .end local v3    # "categoryCode":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_ee
    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V

    goto :goto_7d
.end method

.method private processJsonDashboard(Ljava/lang/String;)V
    .registers 15
    .param p1, "jsonText"    # Ljava/lang/String;

    .prologue
    .line 861
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_5c

    .line 862
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v3, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 865
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_5d

    .line 889
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_86

    .line 892
    :try_start_1a
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_88

    .line 898
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 899
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v10, "category_code"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "categoryCode":Ljava/lang/String;
    sget v10, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 901
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 902
    const/4 v7, 0x1

    .line 903
    .local v7, "is_top":Z
    const/4 v6, 0x0

    .line 904
    .local v6, "is_bottom":Z
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v7, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemPremium(Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 908
    .end local v6    # "is_bottom":Z
    .end local v7    # "is_top":Z
    :cond_59
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5c} :catch_86

    .line 913
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "categoryCode":Ljava/lang/String;
    .end local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5c
    :goto_5c
    return-void

    .line 867
    .restart local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .restart local v5    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5d
    :try_start_5d
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 868
    .local v9, "jsonDashboard":Lorg/json/JSONObject;
    new-instance v2, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v2, v9}, Lcom/samsung/privilege/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    .line 869
    .local v2, "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_69} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_69} :catch_86

    .line 865
    .end local v2    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v9    # "jsonDashboard":Lorg/json/JSONObject;
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 884
    :catch_6c
    move-exception v4

    .line 885
    .local v4, "e":Lorg/json/JSONException;
    :try_start_6d
    const-string v10, "gift.dashboard"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(processJsonDashboard):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_85} :catch_86

    goto :goto_69

    .line 910
    .end local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_86
    move-exception v10

    goto :goto_5c

    .line 894
    .restart local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .restart local v5    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_88
    move-exception v10

    goto :goto_2a
.end method

.method private processJsonPremium(Ljava/lang/String;)V
    .registers 14
    .param p1, "jsonText"    # Ljava/lang/String;

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v1, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 920
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const-string v6, ""

    .line 921
    .local v6, "lastCatName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1d

    .line 958
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_c3

    .line 963
    .end local v1    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "lastCatName":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void

    .line 923
    .restart local v1    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "lastCatName":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 925
    .local v5, "jsonCampaign":Lorg/json/JSONObject;
    const-string v9, "CategoryName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "catName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    .line 927
    new-instance v8, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v8}, Lcom/samsung/privilege/bean/DashboardItem;-><init>()V

    .line 928
    .local v8, "objDashboardItemCatHeader":Lcom/samsung/privilege/bean/DashboardItem;
    const-string v9, "cat_header"

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 929
    const-string v9, "CategoryID"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 930
    const-string v9, "CategoryName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 932
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v8    # "objDashboardItemCatHeader":Lcom/samsung/privilege/bean/DashboardItem;
    :cond_49
    new-instance v7, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v7}, Lcom/samsung/privilege/bean/DashboardItem;-><init>()V

    .line 936
    .local v7, "objDashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    const-string v9, "campaign"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 937
    const-string v9, "small"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    .line 938
    const-string v9, "ID"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    .line 939
    const-string v9, "AgencyName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 940
    const-string v9, "Name"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 941
    const-string v9, "Type"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 942
    const-string v9, "PointPerUnit"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    .line 943
    const-string v9, "Barcode"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 944
    const-string v9, "Discount"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    .line 945
    const-string v9, "FullImageUrl"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 946
    const-string v9, "premium"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 947
    const-string v9, "premium"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 948
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    .line 950
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_a4} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_a4} :catch_c3

    .line 952
    move-object v6, v0

    .line 921
    .end local v0    # "catName":Ljava/lang/String;
    .end local v5    # "jsonCampaign":Lorg/json/JSONObject;
    .end local v7    # "objDashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 953
    :catch_a9
    move-exception v2

    .line 954
    .local v2, "e":Lorg/json/JSONException;
    :try_start_aa
    const-string v9, "gift.dashboard"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(processJsonPremium):"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c2} :catch_c3

    goto :goto_a5

    .line 960
    .end local v1    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "lastCatName":Ljava/lang/String;
    :catch_c3
    move-exception v9

    goto/16 :goto_1c
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 546
    const-string v0, "gIsSendGA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    .line 548
    :cond_10
    return-void
.end method

.method private sendGA(Ljava/lang/String;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;

    .prologue
    const-wide/16 v6, 0x1

    .line 1292
    if-eqz p2, :cond_5c

    .line 1293
    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1294
    iget-boolean v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    if-eqz v0, :cond_5d

    .line 1295
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Campaign Autoredeem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1311
    :cond_5c
    :goto_5c
    return-void

    .line 1297
    :cond_5d
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Campaign Banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5c

    .line 1299
    :cond_a8
    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 1300
    :cond_bc
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " BZB Campaign Banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1301
    :cond_108
    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1302
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Category Banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1303
    :cond_15e
    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 1304
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " BZB Category Banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1306
    :cond_1b4
    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p2, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1307
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c
.end method

.method private setPointsFromCatchAndRefresh()V
    .registers 3

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 669
    :goto_6
    return-void

    .line 649
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private switchPagerByCat(Ljava/lang/String;)V
    .registers 4
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 2724
    :cond_6
    :goto_6
    return-void

    .line 2720
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v1, :cond_6

    .line 2721
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 2722
    .local v0, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerByCat(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 417
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->bindingEvent()V

    .line 419
    :cond_16
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iput-boolean v11, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v8, "category_code"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "categoryCode":Ljava/lang/String;
    sget v8, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 141
    const-string v8, "Gift Shop"

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 143
    :cond_20
    sget v8, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 144
    const-string v8, "PrimeTime"

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 146
    :cond_30
    sget v8, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 147
    const-string v8, "My Privilege"

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 149
    :cond_40
    sget v8, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 150
    const-string v8, "Spare"

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 153
    :cond_50
    :try_start_50
    iget-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dashboard "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_66} :catch_263

    .line 162
    :goto_66
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Wall-Image-FadeIn"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WALL_IMAGE_FADEIN:I

    .line 167
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Wall-Mem-Cache-Size"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WALL_MEM_CACHE_SIZE:I

    .line 168
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Wall-Disk-Cache-Size"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WALL_DISK_CACHE_SIZE:I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-Cache-Memory"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CACHE_MEMORY:I

    .line 171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-Retry-Number"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_RETRY_NUMBER:I

    .line 172
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-Timeout-Connect"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CONNECT_TIMEOUT:I

    .line 173
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-Timeout-Read"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_READ_TIMEOUT:I

    .line 174
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-SampleSize"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_SAMPLE_SIZE:I

    .line 175
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-TempStorage"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_TEMP_STORAGE:I

    .line 176
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Image-SaveQuality"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_SAVE_QUALITY:I

    .line 178
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->setRetainInstance(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 188
    iget-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 191
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 195
    :try_start_1aa
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c7

    .line 197
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c7} :catch_260

    .line 205
    :cond_1c7
    :goto_1c7
    :try_start_1c7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d2} :catch_25d

    .line 211
    :goto_1d2
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    .line 214
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    new-instance v1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_dashboard"

    invoke-direct {v1, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .local v1, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v1, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 219
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 220
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 221
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 222
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 224
    iget v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 225
    .local v7, "width":I
    iget v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 227
    .local v4, "height":I
    if-le v4, v7, :cond_25b

    .end local v4    # "height":I
    :goto_22b
    div-int/lit8 v5, v4, 0x2

    .line 228
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 237
    iget-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 238
    iget-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v8, v11}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 240
    iget v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    iput v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageWidth:I

    .line 241
    iget v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageWidth:I

    mul-int/lit16 v8, v8, 0xc8

    div-int/lit16 v8, v8, 0x12c

    iput v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageHeight:I

    .line 242
    return-void

    .end local v5    # "longest":I
    .restart local v4    # "height":I
    :cond_25b
    move v4, v7

    .line 227
    goto :goto_22b

    .line 207
    .end local v1    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "height":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :catch_25d
    move-exception v8

    goto/16 :goto_1d2

    .line 200
    :catch_260
    move-exception v8

    goto/16 :goto_1c7

    .line 154
    :catch_263
    move-exception v8

    goto/16 :goto_66
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    const v4, 0x7f0300d6

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 306
    new-instance v4, Lcom/samsung/privilege/holder/DashboardNewHolder;

    invoke-direct {v4}, Lcom/samsung/privilege/holder/DashboardNewHolder;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 316
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    const v6, 0x7f1d0014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 319
    :try_start_20
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 320
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "category_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "categoryCode":Ljava/lang/String;
    sget v4, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 322
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    const v5, 0x7f020089

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_45} :catch_d0

    .line 346
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "categoryCode":Ljava/lang/String;
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->initScreenSize()V

    .line 350
    if-eqz p3, :cond_4d

    .line 351
    invoke-direct {p0, p3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 354
    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300d7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 355
    .local v2, "headerView":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v4, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 376
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    const/high16 v4, 0x7f1d0000

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    .line 377
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    const v4, 0x7f1d0001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 379
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-direct {v4, p0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDashboardAdapter:Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    .line 381
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDashboardAdapter:Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V

    .line 392
    :try_start_9e
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvPageHeader:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 393
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvNotiUnread:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 394
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvMyPoint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 395
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvLogin:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_cb} :catch_ce

    .line 401
    :goto_cb
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    return-object v4

    .line 397
    :catch_ce
    move-exception v4

    goto :goto_cb

    .line 325
    .end local v2    # "headerView":Landroid/view/View;
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_d0
    move-exception v4

    goto/16 :goto_45
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 504
    invoke-static {}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 505
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 506
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 489
    iput-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 490
    iput-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 496
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 510
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 514
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 464
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 469
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 470
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 473
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 431
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 439
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    .line 443
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->updateViewForUser()V

    .line 460
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 530
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v0, "gIsSendGA"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 423
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 427
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 477
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 481
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$2;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public updateViewForUser()V
    .registers 2

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->setPointsFromCatchAndRefresh()V

    .line 613
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    if-nez v0, :cond_a

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 642
    :cond_a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V

    .line 643
    return-void
.end method

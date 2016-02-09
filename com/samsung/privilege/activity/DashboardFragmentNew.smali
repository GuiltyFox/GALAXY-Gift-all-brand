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

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 83
    const-string v0, "gift.dashboard.fragment.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->LOGCATLC:Ljava/lang/String;

    .line 84
    const-string v0, "gift.dashboard"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->LOGCAT:Ljava/lang/String;

    .line 86
    const-class v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/samsung/privilege/holder/DashboardNewHolder;

    invoke-direct {v0}, Lcom/samsung/privilege/holder/DashboardNewHolder;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 98
    const-string v0, "Dashboard"

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 111
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    .line 600
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 82
    return-void
.end method

.method private InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 27
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1273
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300c9

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1275
    .local v17, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1276
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1277
    .local v18, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    .end local v18    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1280
    const v2, 0x7f1c0003

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1281
    .local v16, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    .end local v16    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1285
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1287
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$4;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1302
    const v2, 0x7f1c0002

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1303
    .local v13, "tvCaption":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 1304
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

    .line 1305
    .local v8, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1307
    invoke-virtual {v13}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1308
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    .end local v8    # "fontDefault":Landroid/graphics/Typeface;
    :goto_bf
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1d5

    .line 1315
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1316
    .local v11, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1317
    .local v14, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1318
    .local v15, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41700000

    add-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1321
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1324
    .local v10, "lastCode":Ljava/lang/String;
    if-eqz v10, :cond_1cf

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1326
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v12, :cond_1ab

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 1327
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1328
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    :cond_157
    :goto_157
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1344
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

    .line 1353
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1a3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a3

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1357
    :cond_1a3
    return-object v17

    .line 1311
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    :cond_1a4
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bf

    .line 1330
    .restart local v10    # "lastCode":Ljava/lang/String;
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v14    # "tvLastCode":Landroid/widget/TextView;
    .restart local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1ab
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_157

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_157

    .line 1337
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1cf
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b

    .line 1340
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1d5
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1341
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15b
.end method

.method private InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 29
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1362
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300ca

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1364
    .local v19, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1365
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1366
    .local v20, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    .end local v20    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1369
    const v2, 0x7f1c0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1370
    .local v18, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    .end local v18    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1374
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1375
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1377
    const v2, 0x7f1c0012

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1378
    .local v14, "tvLine1":Landroid/widget/TextView;
    const v2, 0x7f1c0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1379
    .local v15, "tvLine2":Landroid/widget/TextView;
    const v2, 0x7f1c0014

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1380
    .local v16, "tvLine3":Landroid/widget/TextView;
    const v2, 0x7f1c0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1382
    .local v17, "tvLine4":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1385
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1392
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_221

    .line 1398
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1399
    .local v10, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1400
    .local v12, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1401
    .local v13, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41700000

    add-float/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1404
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1407
    .local v9, "lastCode":Ljava/lang/String;
    if-eqz v9, :cond_21b

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21b

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1409
    .local v11, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v11, :cond_1f7

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f7

    .line 1410
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    :cond_1aa
    :goto_1aa
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1427
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

    .line 1434
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1f6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v21, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1438
    :cond_1f6
    return-object v19

    .line 1413
    .restart local v9    # "lastCode":Ljava/lang/String;
    .restart local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v12    # "tvLastCode":Landroid/widget/TextView;
    .restart local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1f7
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1aa

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1aa

    .line 1420
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_21b
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae

    .line 1423
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_221
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1424
    .restart local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1ae
.end method

.method private InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1443
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cb

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1444
    .local v12, "viewDashboardItem":Landroid/view/View;
    const v2, 0x7f1c0004

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 1446
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_29

    .line 1447
    const/high16 v2, 0x7f1c0000

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1448
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1450
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_29
    if-eqz p3, :cond_36

    .line 1451
    const v2, 0x7f1c0003

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1452
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_36
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;

    invoke-direct {v3, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1469
    new-instance v9, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1470
    .local v9, "objDashboardItemPagerAdapter":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1472
    const v2, 0x7f1c0005

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1473
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$8;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$8;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1490
    const v2, 0x7f1c0006

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1491
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1508
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1509
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 1510
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1512
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
    .line 1245
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1246
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0300cc

    invoke-virtual {v7, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1248
    .local v10, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_20

    .line 1249
    const v0, 0x7f0702fc

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1250
    .local v11, "viewTop":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    .end local v11    # "viewTop":Landroid/view/View;
    :cond_20
    if-eqz p5, :cond_2d

    .line 1253
    const v0, 0x7f0702ff

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1254
    .local v9, "viewBottom":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1257
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

    .line 1258
    .local v6, "fontDefault":Landroid/graphics/Typeface;
    const v0, 0x7f0702fe

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1259
    .local v8, "tvCatName":Landroid/widget/TextView;
    const/4 v0, 0x1

    invoke-virtual {v8, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1260
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1262
    iget-object v0, p1, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const v0, 0x7f0702fd

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1265
    .local v2, "imgCatIcon":Landroid/widget/ImageView;
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

    .line 1266
    .local v1, "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v3, 0x0

    const v4, 0x7f0202ca

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1268
    return-object v10
.end method

.method private InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 27
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1545
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cd

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1547
    .local v17, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1548
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1549
    .local v18, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    .end local v18    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1552
    const v2, 0x7f1c0003

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1553
    .local v16, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    .end local v16    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1557
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1559
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1572
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1574
    const v2, 0x7f1c0002

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1575
    .local v13, "tvCaption":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 1576
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

    .line 1577
    .local v8, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1579
    invoke-virtual {v13}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1580
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    .end local v8    # "fontDefault":Landroid/graphics/Typeface;
    :goto_bf
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_1d5

    .line 1587
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1588
    .local v11, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1589
    .local v14, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1590
    .local v15, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41400000

    add-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1593
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    add-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1595
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1596
    .local v10, "lastCode":Ljava/lang/String;
    if-eqz v10, :cond_1cf

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1598
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v12, :cond_1ab

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 1599
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1600
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    :cond_157
    :goto_157
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1616
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

    .line 1625
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1a3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a3

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1629
    :cond_1a3
    return-object v17

    .line 1583
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    :cond_1a4
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bf

    .line 1602
    .restart local v10    # "lastCode":Ljava/lang/String;
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v14    # "tvLastCode":Landroid/widget/TextView;
    .restart local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1ab
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_157

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_157

    .line 1609
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_1cf
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15b

    .line 1612
    .end local v10    # "lastCode":Ljava/lang/String;
    .end local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v14    # "tvLastCode":Landroid/widget/TextView;
    .end local v15    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1d5
    const v2, 0x7f1c000d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1613
    .restart local v11    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15b
.end method

.method private InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 29
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1634
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300ce

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1636
    .local v19, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_27

    .line 1637
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1638
    .local v20, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    .end local v20    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p5, :cond_38

    .line 1641
    const v2, 0x7f1c0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1642
    .local v18, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    .end local v18    # "viewBottom":Landroid/view/View;
    :cond_38
    const v2, 0x7f1c0001

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1646
    .local v4, "imgPhoto":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1647
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1649
    const v2, 0x7f1c0012

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1650
    .local v14, "tvLine1":Landroid/widget/TextView;
    const v2, 0x7f1c0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1651
    .local v15, "tvLine2":Landroid/widget/TextView;
    const v2, 0x7f1c0014

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1652
    .local v16, "tvLine3":Landroid/widget/TextView;
    const v2, 0x7f1c0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1654
    .local v17, "tvLine4":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1656
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1664
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_221

    .line 1670
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1671
    .local v10, "layoutLastCode":Landroid/widget/LinearLayout;
    const v2, 0x7f1c000e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1672
    .local v12, "tvLastCode":Landroid/widget/TextView;
    const v2, 0x7f1c000f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1673
    .local v13, "tvLastCodeDesc":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41400000

    add-float/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1676
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1677
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    add-float/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1679
    .local v9, "lastCode":Ljava/lang/String;
    if-eqz v9, :cond_21b

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21b

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1681
    .local v11, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v11, :cond_1f7

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f7

    .line 1682
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1683
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    :cond_1aa
    :goto_1aa
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1699
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

    .line 1706
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1f6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v21, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1710
    :cond_1f6
    return-object v19

    .line 1685
    .restart local v9    # "lastCode":Ljava/lang/String;
    .restart local v11    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v12    # "tvLastCode":Landroid/widget/TextView;
    .restart local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_1f7
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1aa

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1aa

    .line 1692
    .end local v11    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_21b
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ae

    .line 1695
    .end local v9    # "lastCode":Ljava/lang/String;
    .end local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    .end local v12    # "tvLastCode":Landroid/widget/TextView;
    .end local v13    # "tvLastCodeDesc":Landroid/widget/TextView;
    :cond_221
    const v2, 0x7f1c000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1696
    .restart local v10    # "layoutLastCode":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1ae
.end method

.method private InitialDashboardItemMediumPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1715
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300cf

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1716
    .local v12, "viewDashboardItem":Landroid/view/View;
    const v2, 0x7f1c0004

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 1718
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_29

    .line 1719
    const/high16 v2, 0x7f1c0000

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1720
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_29
    if-eqz p3, :cond_36

    .line 1723
    const v2, 0x7f1c0003

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1724
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_36
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$13;

    invoke-direct {v3, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$13;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1741
    new-instance v9, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1742
    .local v9, "objDashboardItemPagerAdapter":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1744
    const v2, 0x7f1c0005

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1745
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$14;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$14;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1762
    const v2, 0x7f1c0006

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1763
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$15;

    invoke-direct {v2, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$15;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1780
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1781
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 1782
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1784
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

    .line 1096
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1097
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300d0

    invoke-virtual {v1, v7, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1099
    .local v5, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_20

    .line 1100
    const v7, 0x7f0702fc

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1101
    .local v6, "viewTop":Landroid/view/View;
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    .end local v6    # "viewTop":Landroid/view/View;
    :cond_20
    if-eqz p4, :cond_2c

    .line 1104
    const v7, 0x7f0702ff

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1105
    .local v4, "viewBottom":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1108
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

    .line 1109
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    const v7, 0x7f070302

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1110
    .local v3, "tvJoin":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1111
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1113
    const v7, 0x7f070301

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1114
    .local v2, "layoutJoin":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    return-object v5
.end method

.method private InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 35
    .param p1, "dashboardItemA"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "dashboardItemB"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1789
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d1

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 1791
    .local v28, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_24

    .line 1792
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1793
    .local v29, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    .end local v29    # "viewTop":Landroid/view/View;
    :cond_24
    if-eqz p4, :cond_35

    .line 1796
    const v2, 0x7f1c0003

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1797
    .local v27, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    .end local v27    # "viewBottom":Landroid/view/View;
    :cond_35
    const v2, 0x7f1c0007

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 1801
    .local v15, "layoutItemA":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c0008

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1802
    .local v4, "imgPhotoA":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1804
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v4, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1824
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1826
    const v2, 0x7f1c0009

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1827
    .local v21, "tvCaptionA":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_35e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35e

    .line 1828
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

    .line 1829
    .local v11, "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1831
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1832
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1833
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_d1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_399

    .line 1839
    const v2, 0x7f1c0016

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1840
    .local v17, "layoutLastCodeA":Landroid/widget/LinearLayout;
    const v2, 0x7f1c0017

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1841
    .local v23, "tvLastCodeA":Landroid/widget/TextView;
    const v2, 0x7f1c0018

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1842
    .local v25, "tvLastCodeDescA":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1843
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1845
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1848
    .local v13, "lastCodeA":Ljava/lang/String;
    if-eqz v13, :cond_390

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_390

    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1850
    .local v19, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v19, :cond_367

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_367

    .line 1851
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    :cond_178
    :goto_178
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1868
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

    .line 1876
    const v2, 0x7f1c000a

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1877
    .local v16, "layoutItemB":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c000b

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1879
    .local v7, "imgPhotoB":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_1da

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1da

    .line 1880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1883
    :cond_1da
    if-eqz p2, :cond_3fc

    .line 1884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x7f02039f

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1886
    invoke-virtual {v7}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v7, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$18;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1908
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1910
    const v2, 0x7f1c000c

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1911
    .local v22, "tvCaptionB":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_3ad

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3ad

    .line 1912
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

    .line 1913
    .restart local v11    # "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1915
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1916
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1917
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1922
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_262
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_3e8

    .line 1923
    const v2, 0x7f1c0019

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1924
    .local v18, "layoutLastCodeB":Landroid/widget/LinearLayout;
    const v2, 0x7f1c001a

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1925
    .local v24, "tvLastCodeB":Landroid/widget/TextView;
    const v2, 0x7f1c001b

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1926
    .local v26, "tvLastCodeDescB":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1928
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1929
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1930
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1932
    .local v14, "lastCodeB":Ljava/lang/String;
    if-eqz v14, :cond_3df

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3df

    .line 1933
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1934
    .local v20, "strPrivilegeMessageB":Ljava/lang/String;
    if-eqz v20, :cond_3b6

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b6

    .line 1935
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1936
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    :cond_309
    :goto_309
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1952
    .end local v14    # "lastCodeB":Ljava/lang/String;
    .end local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    .end local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :goto_30f
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$19;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1960
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1962
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_35d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35d

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1969
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v22    # "tvCaptionB":Landroid/widget/TextView;
    :cond_35d
    :goto_35d
    return-object v28

    .line 1835
    .end local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .end local v16    # "layoutItemB":Landroid/widget/RelativeLayout;
    .end local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    :cond_35e
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d1

    .line 1854
    .restart local v13    # "lastCodeA":Ljava/lang/String;
    .restart local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .restart local v19    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v23    # "tvLastCodeA":Landroid/widget/TextView;
    .restart local v25    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_367
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1855
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_178

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_178

    .line 1856
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_178

    .line 1861
    .end local v19    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_390
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_17e

    .line 1864
    .end local v13    # "lastCodeA":Ljava/lang/String;
    .end local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .end local v23    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v25    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_399
    const v2, 0x7f1c0016

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1865
    .restart local v17    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_17e

    .line 1919
    .restart local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .restart local v16    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v22    # "tvCaptionB":Landroid/widget/TextView;
    :cond_3ad
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_262

    .line 1938
    .restart local v14    # "lastCodeB":Ljava/lang/String;
    .restart local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .restart local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    .restart local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .restart local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_3b6
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_309

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_309

    .line 1940
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_309

    .line 1945
    .end local v20    # "strPrivilegeMessageB":Ljava/lang/String;
    :cond_3df
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_30f

    .line 1948
    .end local v14    # "lastCodeB":Ljava/lang/String;
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v24    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v26    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_3e8
    const v2, 0x7f1c0019

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1949
    .restart local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_30f

    .line 1966
    .end local v18    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v22    # "tvCaptionB":Landroid/widget/TextView;
    :cond_3fc
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_35d
.end method

.method private InitialDashboardItemSmallAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 40
    .param p1, "dashboardItemA"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "dashboardItemB"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    .line 1973
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1974
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 1976
    .local v33, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_24

    .line 1977
    const/high16 v2, 0x7f1c0000

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 1978
    .local v34, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    .end local v34    # "viewTop":Landroid/view/View;
    :cond_24
    if-eqz p4, :cond_35

    .line 1981
    const v2, 0x7f1c0003

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 1982
    .local v32, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1985
    .end local v32    # "viewBottom":Landroid/view/View;
    :cond_35
    const v2, 0x7f1c0007

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1986
    .local v14, "layoutItemA":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c0008

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1987
    .local v4, "imgPhotoA":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1988
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1990
    const v2, 0x7f1c001d

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1991
    .local v24, "tvLine1A":Landroid/widget/TextView;
    const v2, 0x7f1c001e

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1992
    .local v26, "tvLine2A":Landroid/widget/TextView;
    const v2, 0x7f1c001f

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1993
    .local v28, "tvLine3A":Landroid/widget/TextView;
    const v2, 0x7f1c0020

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 1995
    .local v30, "tvLine4A":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2000
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2001
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2002
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2005
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2007
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2008
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_436

    .line 2011
    const v2, 0x7f1c0016

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2012
    .local v16, "layoutLastCodeA":Landroid/widget/LinearLayout;
    const v2, 0x7f1c0017

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2013
    .local v20, "tvLastCodeA":Landroid/widget/TextView;
    const v2, 0x7f1c0018

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 2014
    .local v22, "tvLastCodeDescA":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2016
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2017
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2019
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2020
    .local v12, "lastCodeA":Ljava/lang/String;
    if-eqz v12, :cond_42d

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42d

    .line 2021
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2022
    .local v18, "strPrivilegeMessage":Ljava/lang/String;
    if-eqz v18, :cond_404

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_404

    .line 2023
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2024
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    :cond_1cd
    :goto_1cd
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2040
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

    .line 2047
    const v2, 0x7f1c000a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 2048
    .local v15, "layoutItemB":Landroid/widget/RelativeLayout;
    const v2, 0x7f1c000b

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2050
    .local v7, "imgPhotoB":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_22f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22f

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2054
    :cond_22f
    if-eqz p2, :cond_490

    .line 2055
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x7f02039f

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/privilege/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2058
    const v2, 0x7f1c0022

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 2059
    .local v25, "tvLine1B":Landroid/widget/TextView;
    const v2, 0x7f1c0023

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2060
    .local v27, "tvLine2B":Landroid/widget/TextView;
    const v2, 0x7f1c0024

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 2061
    .local v29, "tvLine3B":Landroid/widget/TextView;
    const v2, 0x7f1c0025

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 2063
    .local v31, "tvLine4B":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2064
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2068
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000

    sub-float/2addr v2, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40c00000

    add-float/2addr v2, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000

    sub-float/2addr v2, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2073
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2078
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    if-eqz v2, :cond_47c

    .line 2079
    const v2, 0x7f1c0019

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2080
    .local v17, "layoutLastCodeB":Landroid/widget/LinearLayout;
    const v2, 0x7f1c001a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2081
    .local v21, "tvLastCodeB":Landroid/widget/TextView;
    const v2, 0x7f1c001b

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2082
    .local v23, "tvLastCodeDescB":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2083
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000

    add-float/2addr v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2085
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2088
    .local v13, "lastCodeB":Ljava/lang/String;
    if-eqz v13, :cond_473

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_473

    .line 2089
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/UserLogin;->GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2090
    .local v19, "strPrivilegeMessageB":Ljava/lang/String;
    if-eqz v19, :cond_44a

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44a

    .line 2091
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2092
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2099
    :cond_3b3
    :goto_3b3
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2108
    .end local v13    # "lastCodeB":Ljava/lang/String;
    .end local v19    # "strPrivilegeMessageB":Ljava/lang/String;
    .end local v21    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v23    # "tvLastCodeDescB":Landroid/widget/TextView;
    :goto_3b9
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$21;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2117
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v2, :cond_403

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_403

    .line 2118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2124
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v25    # "tvLine1B":Landroid/widget/TextView;
    .end local v27    # "tvLine2B":Landroid/widget/TextView;
    .end local v29    # "tvLine3B":Landroid/widget/TextView;
    .end local v31    # "tvLine4B":Landroid/widget/TextView;
    :cond_403
    :goto_403
    return-object v33

    .line 2026
    .end local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .end local v15    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v12    # "lastCodeA":Ljava/lang/String;
    .restart local v18    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v20    # "tvLastCodeA":Landroid/widget/TextView;
    .restart local v22    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_404
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2027
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1cd

    .line 2033
    .end local v18    # "strPrivilegeMessage":Ljava/lang/String;
    :cond_42d
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 2036
    .end local v12    # "lastCodeA":Ljava/lang/String;
    .end local v16    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    .end local v20    # "tvLastCodeA":Landroid/widget/TextView;
    .end local v22    # "tvLastCodeDescA":Landroid/widget/TextView;
    :cond_436
    const v2, 0x7f1c0016

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2037
    .restart local v16    # "layoutLastCodeA":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 2094
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
    :cond_44a
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_3b3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b3

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b3

    .line 2101
    .end local v19    # "strPrivilegeMessageB":Ljava/lang/String;
    :cond_473
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3b9

    .line 2104
    .end local v13    # "lastCodeB":Ljava/lang/String;
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v21    # "tvLastCodeB":Landroid/widget/TextView;
    .end local v23    # "tvLastCodeDescB":Landroid/widget/TextView;
    :cond_47c
    const v2, 0x7f1c0019

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2105
    .restart local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3b9

    .line 2121
    .end local v17    # "layoutLastCodeB":Landroid/widget/LinearLayout;
    .end local v25    # "tvLine1B":Landroid/widget/TextView;
    .end local v27    # "tvLine2B":Landroid/widget/TextView;
    .end local v29    # "tvLine3B":Landroid/widget/TextView;
    .end local v31    # "tvLine4B":Landroid/widget/TextView;
    :cond_490
    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_403
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

    .line 1030
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1031
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 1036
    .local v2, "viewDashboardItem":Landroid/view/View;
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    const-string v6, "medium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1037
    const v5, 0x7f0300d5

    invoke-virtual {v0, v5, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1044
    :goto_20
    if-eqz p4, :cond_2c

    .line 1045
    const v5, 0x7f0702fc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1046
    .local v3, "viewTop":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    .end local v3    # "viewTop":Landroid/view/View;
    :cond_2c
    if-eqz p5, :cond_38

    .line 1049
    const v5, 0x7f0702ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1050
    .local v1, "viewBottom":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    .end local v1    # "viewBottom":Landroid/view/View;
    :cond_38
    const v5, 0x7f070304

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 1055
    .local v4, "webview1":Landroid/webkit/WebView;
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1059
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_autoresize:Z

    if-nez v5, :cond_58

    .line 1060
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1061
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1067
    :cond_58
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_clearcache:Z

    if-nez v5, :cond_62

    .line 1068
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1069
    invoke-virtual {v4}, Landroid/webkit/WebView;->clearHistory()V

    .line 1072
    :cond_62
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript:Z

    if-nez v5, :cond_6d

    .line 1073
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1076
    :cond_6d
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript_cowa:Z

    if-nez v5, :cond_78

    .line 1077
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1080
    :cond_78
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_scrollbar:Z

    if-nez v5, :cond_8a

    .line 1081
    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1082
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 1083
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1084
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1087
    :cond_8a
    iget-boolean v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_zoom:Z

    if-nez v5, :cond_9c

    .line 1088
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1089
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 1092
    :cond_9c
    return-object v2

    .line 1038
    .end local v4    # "webview1":Landroid/webkit/WebView;
    :cond_9d
    iget-object v5, p1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 1039
    const v5, 0x7f0300d4

    invoke-virtual {v0, v5, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1040
    goto/16 :goto_20

    .line 1041
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
    .line 960
    .local p1, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_8

    .line 1027
    return-void

    .line 962
    :cond_8
    :try_start_8
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/DashboardItem;

    .line 964
    .local v1, "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    const/4 v4, 0x0

    .line 965
    .local v4, "is_top":Z
    const/4 v5, 0x0

    .line 966
    .local v5, "is_bottom":Z
    if-nez v10, :cond_34

    .line 967
    const/4 v4, 0x1

    .line 969
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 970
    .local v6, "arguments":Landroid/os/Bundle;
    const-string v0, "category_code"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 971
    .local v7, "categoryCode":Ljava/lang/String;
    sget v0, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 972
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 973
    const/4 v4, 0x0

    .line 977
    .end local v6    # "arguments":Landroid/os/Bundle;
    .end local v7    # "categoryCode":Ljava/lang/String;
    :cond_34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_3d

    const/4 v5, 0x1

    .line 979
    :cond_3d
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "cat_header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 980
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemCatHeader(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    .end local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v4    # "is_top":Z
    .end local v5    # "is_bottom":Z
    :goto_55
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 981
    .restart local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .restart local v4    # "is_top":Z
    .restart local v5    # "is_bottom":Z
    :cond_58
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    const-string v2, "webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 982
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

    .line 1023
    .end local v1    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v4    # "is_top":Z
    .end local v5    # "is_bottom":Z
    :catch_71
    move-exception v9

    .line 1024
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

    .line 984
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

    .line 985
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/DashboardItem;

    .line 986
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

    .line 987
    add-int/lit8 v10, v10, 0x1

    .line 988
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 989
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v8, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmallAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 991
    :cond_dc
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v8, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 994
    :cond_e9
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 996
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 998
    :cond_103
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1001
    .end local v8    # "dashboardItemNext":Lcom/samsung/privilege/bean/DashboardItem;
    :cond_111
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1002
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1003
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1005
    :cond_13a
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 1006
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1008
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

    .line 1012
    :cond_164
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1013
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1015
    :cond_17f
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1016
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v11, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_55

    .line 1018
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
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2562
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getLastRedeemCode(Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V
    .registers 2

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1632
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1543
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1360
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 1271
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 2127
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 2373
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonPremium(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V
    .registers 2

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 1

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V

    return-void
.end method

.method private bindingEvent()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 578
    return-void
.end method

.method private doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 15
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;

    .prologue
    .line 2374
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    if-eqz v7, :cond_c

    .line 2375
    const-string v7, "gift.dashboard"

    const-string v8, "if (doRedeeming == true) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    :cond_b
    :goto_b
    return-void

    .line 2377
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2378
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_b

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2379
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeeming:Z

    .line 2382
    :try_start_21
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    const-string v9, "Redeem "

    iget-object v10, p1, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_124

    .line 2387
    :goto_32
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2388
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2391
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

    .line 2392
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

    .line 2393
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 2394
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2395
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

    .line 2396
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

    .line 2399
    .end local v1    # "date":Ljava/util/Date;
    :cond_df
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, ""

    const v9, 0x7f0a018d

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    .line 2402
    :try_start_f4
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2403
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_111

    .line 2404
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2405
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_111} :catch_122

    .line 2411
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_111
    :goto_111
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2412
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v7, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, p0, p1, v8, v9}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;ZZ)V

    invoke-static {v6, v4, v7}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_b

    .line 2407
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    :catch_122
    move-exception v7

    goto :goto_111

    .line 2383
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v6    # "url":Ljava/lang/String;
    :catch_124
    move-exception v7

    goto/16 :goto_32
.end method

.method private getDashboardKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 669
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "category_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "categoryCode":Ljava/lang/String;
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 671
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_SHOPPING_THAI:Ljava/lang/String;

    .line 673
    :cond_20
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 674
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_PRIMETIME_THAI:Ljava/lang/String;

    .line 676
    :cond_2e
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 677
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_PREMIUM_THAI:Ljava/lang/String;

    .line 679
    :cond_3c
    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 680
    sget-object v2, Lcom/samsung/privilege/AppSetting;->DASHBOARD_KEY_SPARE_THAI:Ljava/lang/String;

    .line 683
    :cond_4a
    return-object v2
.end method

.method private getLastRedeemCode(Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    .registers 7
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p2, "error_message"    # Ljava/lang/String;

    .prologue
    .line 2563
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

    .line 2564
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

    .line 2565
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2566
    return-void
.end method

.method private handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 27
    .param p1, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;

    .prologue
    .line 2128
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    if-nez v19, :cond_7

    .line 2371
    :cond_6
    :goto_6
    return-void

    .line 2132
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4d

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Click "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v19 .. v23}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2137
    :cond_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "campaign"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1db

    .line 2138
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    move/from16 v19, v0

    if-eqz v19, :cond_171

    .line 2139
    const/4 v10, 0x1

    .line 2140
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

    .line 2141
    .local v14, "lastCode":Ljava/lang/String;
    if-eqz v14, :cond_10d

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10d

    .line 2142
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10b

    .line 2143
    const/4 v10, 0x0

    .line 2151
    :goto_9d
    if-eqz v10, :cond_10f

    .line 2152
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2153
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f0a001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2154
    const v19, 0x7f0a02ff

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

    const v20, 0x7f0a034d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/samsung/privilege/activity/DashboardFragmentNew$22;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$22;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 2158
    const v20, 0x7f0a034c

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

    .line 2166
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2167
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 2145
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_10b
    const/4 v10, 0x1

    .line 2147
    goto :goto_9d

    .line 2148
    :cond_10d
    const/4 v10, 0x1

    goto :goto_9d

    .line 2170
    :cond_10f
    :try_start_10f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-string v20, "clipboard"

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    .line 2171
    .local v7, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v7, v14}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    const-string v19, "Your discount code is already in clipboard."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_127} :catch_676

    .line 2178
    .end local v7    # "clipboard":Landroid/content/ClipboardManager;
    :goto_127
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2179
    .local v12, "intent":Landroid/content/Intent;
    const-string v19, "url"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    const-string v19, "serial"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2181
    const-string v19, "enable_webview_back"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2182
    const-string v19, "hide_serial"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2183
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 2197
    .end local v10    # "flowRedeem":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "lastCode":Ljava/lang/String;
    :cond_171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "premium"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b3

    .line 2198
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2199
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2209
    :goto_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_GIFT_CAMPAIGN"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2203
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1b3
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2204
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2206
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a6

    .line 2211
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1db
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_campaign"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22c

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2225
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2226
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2228
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_BZBS_CAMPAIGN"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2231
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_22c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_campaign_ads"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27d

    .line 2232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2245
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2246
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2248
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_BZBS_ADS"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2251
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_27d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "cat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a9

    .line 2252
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->switchPagerByCat(Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_GIFT_CATE"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2255
    :cond_2a9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2257
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "link"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f4

    .line 2258
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

    .line 2259
    .local v15, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_GIFT_LINK"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2262
    .end local v15    # "openUrlIntent":Landroid/content/Intent;
    :cond_2f4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "openapp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_432

    .line 2264
    :try_start_306
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_317} :catch_3de

    move-result-object v3

    .line 2267
    .local v3, "LaunchApp":Landroid/content/Intent;
    :try_start_318
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_344

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_344

    .line 2268
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2269
    .local v16, "params":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_33b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_340} :catch_673

    move/from16 v0, v19

    if-lt v11, v0, :cond_356

    .line 2302
    .end local v11    # "i":I
    .end local v16    # "params":[Ljava/lang/String;
    :cond_344
    :goto_344
    :try_start_344
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_349} :catch_3de

    .line 2311
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    :goto_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_GIFT_OPENAPP"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2271
    .restart local v3    # "LaunchApp":Landroid/content/Intent;
    .restart local v11    # "i":I
    .restart local v16    # "params":[Ljava/lang/String;
    :cond_356
    :try_start_356
    aget-object v19, v16, v11

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2272
    .local v8, "datas":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2273
    .local v13, "key":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 2274
    .local v18, "value":Ljava/lang/String;
    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3d8

    .line 2275
    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2276
    .local v17, "temps":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<int"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_398

    .line 2277
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2269
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "temps":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :goto_395
    add-int/lit8 v11, v11, 0x1

    goto :goto_33b

    .line 2279
    .restart local v8    # "datas":[Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v17    # "temps":[Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_398
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<double"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b4

    .line 2280
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_395

    .line 2293
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "temps":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :catch_3b2
    move-exception v19

    goto :goto_395

    .line 2282
    .restart local v8    # "datas":[Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v17    # "temps":[Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_3b4
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "<boolean"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3ce

    .line 2283
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_395

    .line 2286
    :cond_3ce
    const/16 v19, 0x1

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_395

    .line 2290
    .end local v17    # "temps":[Ljava/lang/String;
    :cond_3d8
    move-object/from16 v0, v18

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_356 .. :try_end_3dd} :catch_3b2

    goto :goto_395

    .line 2303
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    .end local v8    # "datas":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "params":[Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :catch_3de
    move-exception v9

    .line 2305
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_3df
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
    :try_end_406
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3df .. :try_end_406} :catch_408

    goto/16 :goto_349

    .line 2306
    :catch_408
    move-exception v5

    .line 2307
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

    goto/16 :goto_349

    .line 2312
    .end local v5    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_432
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_market"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_474

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2316
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2317
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_MARKETPLACE_BZBS"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2320
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_474
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_market_cate"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_498

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_cat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4d7

    .line 2321
    :cond_498
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2324
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2325
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v19, "cat"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2326
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_MARKETPLACE_BZBS_CATE"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2329
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4d7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_dashboard"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_519

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 2332
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lic/buzzebeeslib/activity/DashboardActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2333
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v19, v0

    const-string v20, "DASHBOARD_DASHBOARD_BZBS"

    invoke-virtual/range {v19 .. v20}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2336
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_519
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "menu"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2338
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "newsfeeds"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2340
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "activities"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2342
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "friends"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_57b

    .line 2343
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/FriendsFragmentActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2344
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2345
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_57b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "bzbs_fanpage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2347
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "badges"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2349
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "marketplace"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2351
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "checkins"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2353
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "my_profile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5ef

    .line 2354
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2355
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2356
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_5ef
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "qr_code"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_61b

    .line 2357
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/QRLandingActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2358
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2359
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_61b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "inapps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_647

    .line 2360
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/MiscFragmentActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2361
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2362
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_647
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "about_us"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2363
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/samsung/privilege/activity/AboutUsActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2364
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2298
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v3    # "LaunchApp":Landroid/content/Intent;
    :catch_673
    move-exception v19

    goto/16 :goto_344

    .line 2174
    .end local v3    # "LaunchApp":Landroid/content/Intent;
    .restart local v10    # "flowRedeem":Z
    .restart local v14    # "lastCode":Ljava/lang/String;
    :catch_676
    move-exception v19

    goto/16 :goto_127
.end method

.method private initScreenSize()V
    .registers 3

    .prologue
    .line 545
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 546
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 547
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/samsung/privilege/AppSetting;->dpi:I

    .line 548
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    .line 549
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/samsung/privilege/AppSetting;->screenHeight:I

    .line 550
    return-void
.end method

.method private loadDashboard(Z)V
    .registers 10
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_105

    .line 717
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v5, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_14

    .line 718
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v5, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 721
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

    .line 722
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 723
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v5, "category_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "categoryCode":Ljava/lang/String;
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 725
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

    .line 727
    :cond_64
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 728
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

    .line 730
    :cond_8d
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

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
    :cond_b6
    sget v5, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

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

    .line 737
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

    .line 738
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 739
    .local v2, "startTime":J
    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    invoke-direct {v6, p0, p1, v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;ZJ)V

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 741
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

    .line 687
    iget-object v7, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v7, v7, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
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

    .line 690
    .local v1, "catch_dashboard_items":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ee

    .line 691
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 694
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v7, "category_code"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "categoryCode":Ljava/lang/String;
    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 696
    const-string v7, "dashboard_premium"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "catch_premium":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 698
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonPremium(Ljava/lang/String;)V

    .line 706
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

    .line 707
    .local v4, "times_sec":J
    const-wide/16 v7, 0xe10

    cmp-long v7, v4, v7

    if-lez v7, :cond_7d

    .line 708
    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V

    .line 713
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v3    # "categoryCode":Ljava/lang/String;
    .end local v4    # "times_sec":J
    :cond_7d
    :goto_7d
    return-void

    .line 700
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

    .line 701
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

    .line 702
    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_59

    .line 711
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
    .line 855
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_5c

    .line 856
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v3, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 859
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_5d

    .line 883
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_86

    .line 886
    :try_start_1a
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_88

    .line 892
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 893
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v10, "category_code"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "categoryCode":Ljava/lang/String;
    sget v10, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 895
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 896
    const/4 v7, 0x1

    .line 897
    .local v7, "is_top":Z
    const/4 v6, 0x0

    .line 898
    .local v6, "is_bottom":Z
    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v10, v10, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v7, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemPremium(Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 902
    .end local v6    # "is_bottom":Z
    .end local v7    # "is_top":Z
    :cond_59
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5c} :catch_86

    .line 907
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "categoryCode":Ljava/lang/String;
    .end local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5c
    :goto_5c
    return-void

    .line 861
    .restart local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .restart local v5    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5d
    :try_start_5d
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 862
    .local v9, "jsonDashboard":Lorg/json/JSONObject;
    new-instance v2, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v2, v9}, Lcom/samsung/privilege/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    .line 863
    .local v2, "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_69} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_69} :catch_86

    .line 859
    .end local v2    # "dashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    .end local v9    # "jsonDashboard":Lorg/json/JSONObject;
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 878
    :catch_6c
    move-exception v4

    .line 879
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

    .line 904
    .end local v3    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_86
    move-exception v10

    goto :goto_5c

    .line 888
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
    .line 911
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v1, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 914
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const-string v6, ""

    .line 915
    .local v6, "lastCatName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1d

    .line 952
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_c3

    .line 957
    .end local v1    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "lastCatName":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void

    .line 917
    .restart local v1    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "lastCatName":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 919
    .local v5, "jsonCampaign":Lorg/json/JSONObject;
    const-string v9, "CategoryName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "catName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    .line 921
    new-instance v8, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v8}, Lcom/samsung/privilege/bean/DashboardItem;-><init>()V

    .line 922
    .local v8, "objDashboardItemCatHeader":Lcom/samsung/privilege/bean/DashboardItem;
    const-string v9, "cat_header"

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 923
    const-string v9, "CategoryID"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 924
    const-string v9, "CategoryName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 926
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .end local v8    # "objDashboardItemCatHeader":Lcom/samsung/privilege/bean/DashboardItem;
    :cond_49
    new-instance v7, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-direct {v7}, Lcom/samsung/privilege/bean/DashboardItem;-><init>()V

    .line 930
    .local v7, "objDashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    const-string v9, "campaign"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 931
    const-string v9, "small"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    .line 932
    const-string v9, "ID"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    .line 933
    const-string v9, "AgencyName"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 934
    const-string v9, "Name"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 935
    const-string v9, "Type"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 936
    const-string v9, "PointPerUnit"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    .line 937
    const-string v9, "Barcode"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 938
    const-string v9, "Discount"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    .line 939
    const-string v9, "FullImageUrl"

    invoke-static {v5, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 940
    const-string v9, "premium"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 941
    const-string v9, "premium"

    iput-object v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 942
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    .line 944
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_a4} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_a4} :catch_c3

    .line 946
    move-object v6, v0

    .line 915
    .end local v0    # "catName":Ljava/lang/String;
    .end local v5    # "jsonCampaign":Lorg/json/JSONObject;
    .end local v7    # "objDashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 947
    :catch_a9
    move-exception v2

    .line 948
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

    .line 954
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
    .line 539
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 540
    const-string v0, "gIsSendGA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    .line 542
    :cond_10
    return-void
.end method

.method private setPointsFromCatchAndRefresh()V
    .registers 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 663
    :goto_6
    return-void

    .line 643
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
    .line 2653
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 2660
    :cond_6
    :goto_6
    return-void

    .line 2656
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v1, :cond_6

    .line 2657
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 2658
    .local v0, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerByCat(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 411
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->bindingEvent()V

    .line 413
    :cond_16
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 137
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v9, "category_code"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "categoryCode":Ljava/lang/String;
    sget v9, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 140
    const-string v9, "Shopping"

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 142
    :cond_20
    sget v9, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 143
    const-string v9, "PrimeTime"

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 145
    :cond_30
    sget v9, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 146
    const-string v9, "Premium"

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 148
    :cond_40
    sget v9, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 149
    const-string v9, "Spare"

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    .line 156
    :cond_50
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Wall-Image-FadeIn"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WALL_IMAGE_FADEIN:I

    .line 161
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Wall-Mem-Cache-Size"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WALL_MEM_CACHE_SIZE:I

    .line 162
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Wall-Disk-Cache-Size"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WALL_DISK_CACHE_SIZE:I

    .line 164
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-Cache-Memory"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CACHE_MEMORY:I

    .line 165
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-Retry-Number"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_RETRY_NUMBER:I

    .line 166
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-Timeout-Connect"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CONNECT_TIMEOUT:I

    .line 167
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-Timeout-Read"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_READ_TIMEOUT:I

    .line 168
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-SampleSize"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_SAMPLE_SIZE:I

    .line 169
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-TempStorage"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_TEMP_STORAGE:I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Image-SaveQuality"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_SAVE_QUALITY:I

    .line 172
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->setRetainInstance(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 182
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 185
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v9

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 188
    :try_start_194
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v10, "DASHBOARD"

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_257

    .line 190
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v10, "DASHBOARD_LOGIN_FB"

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1b2} :catch_270

    .line 199
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "carrier":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v10, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;

    const-string v11, "carrier"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v2, v12}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1cd} :catch_275

    .line 205
    .end local v2    # "carrier":Ljava/lang/String;
    :goto_1cd
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    .line 208
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    new-instance v1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "cache_dashboard"

    invoke-direct {v1, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    .local v1, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x3e800000

    invoke-virtual {v1, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 213
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 214
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 215
    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 216
    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 218
    iget v8, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 219
    .local v8, "width":I
    iget v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 221
    .local v5, "height":I
    if-le v5, v8, :cond_273

    .end local v5    # "height":I
    :goto_226
    div-int/lit8 v6, v5, 0x2

    .line 222
    .local v6, "longest":I
    new-instance v9, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 231
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 232
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 234
    iget v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gScreenWidth:I

    iput v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageWidth:I

    .line 235
    iget v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageWidth:I

    mul-int/lit16 v9, v9, 0xc8

    div-int/lit16 v9, v9, 0x12c

    iput v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gImageHeight:I

    .line 236
    return-void

    .line 191
    .end local v1    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "longest":I
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":I
    :cond_257
    :try_start_257
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2

    .line 192
    iget-object v9, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v10, "DASHBOARD_LOGIN_DEVICE"

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_26e} :catch_270

    goto/16 :goto_1b2

    .line 194
    :catch_270
    move-exception v9

    goto/16 :goto_1b2

    .restart local v1    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "height":I
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "width":I
    :cond_273
    move v5, v8

    .line 221
    goto :goto_226

    .line 201
    .end local v1    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "height":I
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":I
    :catch_275
    move-exception v9

    goto/16 :goto_1cd
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    const v4, 0x7f0300d6

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 300
    new-instance v4, Lcom/samsung/privilege/holder/DashboardNewHolder;

    invoke-direct {v4}, Lcom/samsung/privilege/holder/DashboardNewHolder;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 310
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    const v6, 0x7f1d0014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 313
    :try_start_20
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 314
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "category_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "categoryCode":Ljava/lang/String;
    sget v4, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 316
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    const v5, 0x7f020087

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_45} :catch_d0

    .line 340
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "categoryCode":Ljava/lang/String;
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->initScreenSize()V

    .line 344
    if-eqz p3, :cond_4d

    .line 345
    invoke-direct {p0, p3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 348
    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300d7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, "headerView":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v4, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 370
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    const/high16 v4, 0x7f1d0000

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    .line 371
    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    const v4, 0x7f1d0001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/samsung/privilege/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-direct {v4, p0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDashboardAdapter:Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    .line 375
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDashboardAdapter:Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V

    .line 386
    :try_start_9e
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvPageHeader:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 387
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvNotiUnread:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 388
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvMyPoint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardNewHolder;->tvLogin:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_cb} :catch_ce

    .line 395
    :goto_cb
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    return-object v4

    .line 391
    :catch_ce
    move-exception v4

    goto :goto_cb

    .line 319
    .end local v2    # "headerView":Landroid/view/View;
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_d0
    move-exception v4

    goto/16 :goto_45
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 494
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 498
    invoke-static {}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 499
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 500
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 483
    iput-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;

    .line 484
    iput-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 490
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 504
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 508
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 458
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 463
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 467
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 433
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    .line 434
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 437
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->updateViewForUser()V

    .line 454
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 524
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    const-string v0, "gIsSendGA"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsSendGA:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 527
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 417
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 421
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 475
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$2;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method

.method public updateViewForUser()V
    .registers 2

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->setPointsFromCatchAndRefresh()V

    .line 607
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    if-nez v0, :cond_a

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 636
    :cond_a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V

    .line 637
    return-void
.end method

.class public Lic/buzzebeeslib/activity/MarketPlaceActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketPlaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;,
        Lic/buzzebeeslib/activity/MarketPlaceActivity$QTPagerAdapter;
    }
.end annotation


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field arrImg:[Ljava/lang/Integer;

.field private contentQT:Landroid/widget/RelativeLayout;

.field private gDialog:Landroid/app/ProgressDialog;

.field private mContent:Landroid/support/v4/app/Fragment;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    const-string v0, "MarketPlaceActivity"

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->LOGCAT:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->contentQT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private checkClearCache()V
    .registers 10

    .prologue
    .line 198
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "root":Ljava/io/File;
    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    .line 200
    .local v3, "lngFileSize":J
    const-string v6, "MarketPlaceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lngFileSize "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v6, 0x4

    invoke-static {v3, v4, v6}, Lic/buzzebeeslib/util/BBUtil;->getUnitFileSize(JI)D

    move-result-wide v0

    .line 202
    .local v0, "dblSumFolderSize":D
    const-string v6, "MarketPlaceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dblSumFolderSize "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-wide/high16 v6, 0x3ff0000000000000L

    cmpl-double v6, v0, v6

    if-ltz v6, :cond_53

    .line 205
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;)V

    .line 206
    .local v2, "deleteFileTask":Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v2, v6}, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 211
    .end local v0    # "dblSumFolderSize":D
    .end local v2    # "deleteFileTask":Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;
    .end local v3    # "lngFileSize":J
    .end local v5    # "root":Ljava/io/File;
    :cond_53
    :goto_53
    return-void

    .line 208
    :catch_54
    move-exception v6

    goto :goto_53
.end method

.method private qtMarketBzbs()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x41200000

    const/high16 v10, 0x40400000

    .line 263
    sget v7, Lic/buzzebeeslib/R$id;->contentQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->contentQT:Landroid/widget/RelativeLayout;

    .line 264
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->contentQT:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->contentQT:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget v7, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 268
    .local v3, "linCircle":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v6, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v9

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->GetPixelFromDips(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    const/4 v4, 0x4

    .line 271
    .local v4, "numPage":I
    new-array v7, v4, [Ljava/lang/Integer;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->arrImg:[Ljava/lang/Integer;

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    const/4 v7, 0x4

    if-lt v1, v7, :cond_78

    .line 277
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Landroid/widget/ImageView;

    .line 278
    .local v2, "imgCircle":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    :goto_53
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-lt v1, v7, :cond_a2

    .line 289
    sget v7, Lic/buzzebeeslib/R$id;->vpQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 290
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 291
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceActivity$QTPagerAdapter;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceActivity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;[Ljava/lang/Integer;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 293
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceActivity$3;

    invoke-direct {v7, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceActivity$3;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;[Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 321
    return-void

    .line 273
    .end local v2    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_78
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "qt_bzbs"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, "ResID":I
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 279
    .end local v0    # "ResID":I
    .restart local v2    # "imgCircle":[Landroid/widget/ImageView;
    :cond_a2
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v2, v1

    .line 280
    aget-object v7, v2, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    if-nez v1, :cond_c3

    .line 282
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :goto_bb
    aget-object v7, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 284
    :cond_c3
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bb
.end method

.method private showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_33

    .line 164
    :try_start_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceActivity$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 182
    const-string v4, "No"

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceActivity$2;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    .line 193
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_33
    :goto_33
    return-void

    .line 189
    :catch_34
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to showDialogHasNewVersion():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 386
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public doResetMarketSearch()V
    .registers 6

    .prologue
    .line 248
    const-string v2, "MarketPlaceActivity"

    const-string v3, "public void doResetMarketSearch() {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 250
    const-string v2, "MarketPlaceActivity"

    const-string v3, "if (mContent.getClass().getName().equals(MarketPlaceMainFragment.class.getName())) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    check-cast v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 254
    .local v1, "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :try_start_28
    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doResetTextSearch()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 259
    .end local v1    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :cond_2b
    :goto_2b
    return-void

    .line 255
    .restart local v1    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :catch_2c
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MarketPlaceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doResetMarketSearch):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->checkClearCache()V

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->requestWindowFeature(I)Z

    .line 67
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 68
    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_place:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->setContentView(I)V

    .line 70
    if-eqz p1, :cond_61

    .line 71
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "mContent"

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 86
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 87
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lic/buzzebeeslib/R$id;->frameMarket:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 95
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 98
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v4, "UA-42649771-1"

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 104
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 106
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "MARKETPLACE_BZBS_LIST"

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 107
    return-void

    .line 74
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_61
    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-direct {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;-><init>()V

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 76
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cat"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "cat":Ljava/lang/String;
    if-eqz v1, :cond_20

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "cat"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_20
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    const/4 v2, 0x4

    if-ne p1, v2, :cond_18

    .line 144
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->finish()V

    .line 149
    const/4 v2, 0x1

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_17
    return v2

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_17
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 114
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/LibUserLogin;->SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z

    .line 119
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->qtMarketBzbs()V

    .line 121
    :cond_18
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mContent"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 159
    return-void
.end method

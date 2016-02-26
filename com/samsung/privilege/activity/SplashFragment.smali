.class public Lcom/samsung/privilege/activity/SplashFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplashFragment.java"


# static fields
.field private static final PERMISSIONS_READ_BzBs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLeak:Landroid/view/View;

.field private mProgress_bar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/privilege/AppSetting;->Permissons_BzBs_Read_List:Ljava/util/List;

    sput-object v0, Lcom/samsung/privilege/activity/SplashFragment;->PERMISSIONS_READ_BzBs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initScreenSize()V
    .registers 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 110
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    .line 111
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenHeight:I

    .line 113
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/samsung/privilege/AppSetting;->dpi:I

    .line 116
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashFragment;->setRetainInstance(Z)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashFragment;->initScreenSize()V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f03011e

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_d7

    .line 43
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x2

    if-ne v5, v6, :cond_cf

    .line 47
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x1e0

    if-gt v5, v6, :cond_c7

    .line 48
    const v5, 0x7f03011f

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    .line 59
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_3e
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    const v6, 0x7f0c0335

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LoginButton;

    .line 60
    .local v0, "authButton":Lcom/facebook/widget/LoginButton;
    sget-object v5, Lcom/samsung/privilege/activity/SplashFragment;->PERMISSIONS_READ_BzBs:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/facebook/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "402705486466922"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 63
    invoke-virtual {v0, v7}, Lcom/facebook/widget/LoginButton;->setVisibility(I)V

    .line 68
    :goto_61
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    const v6, 0x7f0c0334

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 69
    .local v1, "button_login":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    const v6, 0x7f0c0399

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 70
    .local v2, "button_login_my":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "517155661760483"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 71
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 72
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 78
    :goto_8d
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    const/high16 v6, 0x7f4c0000

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mProgress_bar:Landroid/widget/ProgressBar;

    .line 79
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mProgress_bar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    :try_start_9e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 83
    .local v4, "font":Landroid/graphics/Typeface;
    invoke-virtual {v0, v4}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/facebook/widget/LoginButton;->setTextSize(F)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c4} :catch_eb

    .line 89
    .end local v4    # "font":Landroid/graphics/Typeface;
    :goto_c4
    iget-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    return-object v5

    .line 50
    .end local v0    # "authButton":Lcom/facebook/widget/LoginButton;
    .end local v1    # "button_login":Landroid/widget/ImageButton;
    .end local v2    # "button_login_my":Landroid/widget/ImageButton;
    .restart local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_c7
    invoke-virtual {p1, v9, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    goto/16 :goto_3e

    .line 53
    :cond_cf
    invoke-virtual {p1, v9, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    goto/16 :goto_3e

    .line 56
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_d7
    invoke-virtual {p1, v9, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    goto/16 :goto_3e

    .line 65
    .restart local v0    # "authButton":Lcom/facebook/widget/LoginButton;
    :cond_df
    invoke-virtual {v0, v8}, Lcom/facebook/widget/LoginButton;->setVisibility(I)V

    goto/16 :goto_61

    .line 74
    .restart local v1    # "button_login":Landroid/widget/ImageButton;
    .restart local v2    # "button_login_my":Landroid/widget/ImageButton;
    :cond_e4
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 75
    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8d

    .line 85
    :catch_eb
    move-exception v5

    goto :goto_c4
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 130
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 122
    const v0, 0x7f0c007c

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 124
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    .line 125
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 97
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsAutoLoginFB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 98
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/UserLogin;->SetIsAutoLoginFB(Landroid/content/Context;Z)Z

    .line 100
    iget-object v1, p0, Lcom/samsung/privilege/activity/SplashFragment;->mLeak:Landroid/view/View;

    const v2, 0x7f0c0335

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LoginButton;

    .line 101
    .local v0, "authButton":Lcom/facebook/widget/LoginButton;
    sget-object v1, Lcom/samsung/privilege/activity/SplashFragment;->PERMISSIONS_READ_BzBs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 102
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->performClick()Z

    .line 105
    .end local v0    # "authButton":Lcom/facebook/widget/LoginButton;
    :cond_36
    return-void
.end method

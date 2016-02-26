.class public Lcom/samsung/privilege/activity/FriendsFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FriendsFragmentActivity.java"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gLastResumeTime:J

.field private mAdapter:Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 28
    const-string v0, "buzzebees.friends"

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->LOGCAT:Ljava/lang/String;

    .line 29
    const-string v0, "buzzebees.friends.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->LOGCATLC:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->gLastResumeTime:J

    .line 27
    return-void
.end method

.method private initScreenSize()V
    .registers 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 147
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    .line 148
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenHeight:I

    .line 150
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/samsung/privilege/AppSetting;->dpi:I

    .line 153
    return-void
.end method

.method private initialLayout()V
    .registers 3

    .prologue
    .line 157
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    const v1, 0x7f030107

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->setContentView(I)V

    .line 162
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const-string v0, "buzzebees.friends.lc"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 140
    const-string v0, "gLastResumeTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->gLastResumeTime:J

    .line 142
    :cond_17
    return-void
.end method


# virtual methods
.method public doMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->finish()V

    .line 166
    return-void
.end method

.method public doMyPoint(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 47
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->gHandler:Landroid/os/Handler;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->gFont:Landroid/graphics/Typeface;

    .line 50
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->initScreenSize()V

    .line 54
    invoke-direct {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->initialLayout()V

    .line 56
    const v10, 0x7f0c0031

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "768830479847872"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10a

    .line 58
    const v10, 0x7f0202b8

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :goto_5c
    const v10, 0x7f2a0040

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 68
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_142

    .line 69
    const v10, 0x7f0202bc

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :goto_75
    if-eqz p1, :cond_7a

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 80
    :cond_7a
    new-instance v10, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

    .line 82
    const v10, 0x7f0c0055

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    iput-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 83
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const-string v11, "VP"

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 84
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v11, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 87
    .local v9, "tf":Landroid/graphics/Typeface;
    const v10, 0x7f0c0056

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/PagerTitleStrip;

    .line 88
    .local v5, "indicator":Landroid/support/v4/view/PagerTitleStrip;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 89
    .local v8, "prevText":Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "currText":Landroid/widget/TextView;
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    .local v7, "nextText":Landroid/widget/TextView;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const v10, 0x7f0200a1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 99
    .local v6, "intent":Landroid/content/Intent;
    const-string v10, "category_no"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "categoryNo":I
    if-gez v0, :cond_14a

    .line 101
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v11, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    :goto_103
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void

    .line 59
    .end local v0    # "categoryNo":I
    .end local v1    # "currText":Landroid/widget/TextView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "nextText":Landroid/widget/TextView;
    .end local v8    # "prevText":Landroid/widget/TextView;
    .end local v9    # "tf":Landroid/graphics/Typeface;
    :cond_10a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1525635597652592"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_122

    .line 60
    const v10, 0x7f0202b7

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 61
    :cond_122
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "517155661760483"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13a

    .line 62
    const v10, 0x7f0202b9

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 64
    :cond_13a
    const v10, 0x7f0202ba

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 71
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_142
    const v10, 0x7f0202bb

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_75

    .line 103
    .restart local v0    # "categoryNo":I
    .restart local v1    # "currText":Landroid/widget/TextView;
    .restart local v5    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "nextText":Landroid/widget/TextView;
    .restart local v8    # "prevText":Landroid/widget/TextView;
    .restart local v9    # "tf":Landroid/graphics/Typeface;
    :cond_14a
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_103
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "buzzebees.friends.lc"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "buzzebees.friends.lc"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v0, "gLastResumeTime"

    iget-wide v2, p0, Lcom/samsung/privilege/activity/FriendsFragmentActivity;->gLastResumeTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    return-void
.end method

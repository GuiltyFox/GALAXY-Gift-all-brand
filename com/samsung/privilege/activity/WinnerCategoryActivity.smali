.class public Lcom/samsung/privilege/activity/WinnerCategoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WinnerCategoryActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 18
    const-class v0, Lcom/samsung/privilege/activity/WinnerCategoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private setFragmentWinnerCategory()V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;-><init>()V

    .line 58
    .local v0, "fragmentCampaignList":Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1001d3

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->finish()V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 28
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->setContentView(I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->gHandler:Landroid/os/Handler;

    .line 33
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 42
    if-eqz p1, :cond_3f

    .line 50
    :goto_3e
    return-void

    .line 46
    :cond_3f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WinnerCategoryActivity;->setFragmentWinnerCategory()V

    .line 49
    :cond_42
    const-string/jumbo v0, "Winner"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    goto :goto_3e
.end method

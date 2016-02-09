.class public Lic/buzzebeeslib/activity/PlaceActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlaceActivity.java"


# instance fields
.field private FragmentTag:Ljava/lang/String;

.field private gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gParamPAGE_MODE:I

.field private mContent:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE_ACTIVITY"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->gParamPAGE_MODE:I

    .line 50
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/PlaceActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 28
    sget v1, Lic/buzzebeeslib/R$layout;->bz_place:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/PlaceActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PlaceActivity;->initialParam()V

    .line 32
    if-eqz p1, :cond_3d

    .line 33
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PlaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mContent"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 34
    const-string v1, "FragmentTag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->FragmentTag:Ljava/lang/String;

    .line 40
    :goto_28
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PlaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lic/buzzebeeslib/R$id;->framePlace:I

    iget-object v2, p0, Lic/buzzebeeslib/activity/PlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PlaceActivity;->FragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void

    .line 36
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_3d
    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment;

    iget v2, p0, Lic/buzzebeeslib/activity/PlaceActivity;->gParamPAGE_MODE:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/PlaceActivity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/fragment/PlaceMainFragment;-><init>(ILic/buzzebeeslib/bean/Campaign;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 37
    const-class v1, Lic/buzzebeeslib/fragment/PlaceMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/PlaceActivity;->FragmentTag:Ljava/lang/String;

    goto :goto_28
.end method
